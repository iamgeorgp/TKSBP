import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import 'di/di.dart';
import 'features/log/log.dart';
import 'routes/app_router/app_router.dart';
import 'storage/users_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await TopG.init();
  getIt.get<Log>().d('TopG initialized');
  await ScarlettLocalization.init();
  getIt.get<Log>().d('ScarlettLocalization initialized');
  await getIt.get<UsersStorage>().init();
  runApp(
    const ProviderScope(
      child: TopG(
        child: TKSBPApp(),
      ),
    ),
  );
}

class TKSBPApp extends StatefulWidget {
  const TKSBPApp({super.key});

  @override
  State<TKSBPApp> createState() => _TKSBPAppState();
}

class _TKSBPAppState extends State<TKSBPApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final colorTheme = theme.colorScheme;
    return ScarlettLocalization(
      builder: (locale) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        locale: locale,
        supportedLocales: S.supportedLocales,
        localizationsDelegates: S.localizationDelegates,
        theme: ThemeData(colorScheme: colorTheme),
        routerConfig: _router.config(),
        scrollBehavior:
            kIsWeb || defaultTargetPlatform == TargetPlatform.windows
                ? CustomScrollBehavior()
                : null,
      ),
    );
  }

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
