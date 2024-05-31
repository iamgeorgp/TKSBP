import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import 'di/di.dart';
import 'features/log/log.dart';
import 'routes/app_router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await TopG.init();
  getIt.get<Log>().d('TopG initialized');
  await ScarlettLocalization.init();
  getIt.get<Log>().d('ScarlettLocalization initialized');
  runApp(
    const ProviderScope(
      child: TopG(
        child: WebLaba2App(),
      ),
    ),
  );
}

class WebLaba2App extends StatefulWidget {
  const WebLaba2App({super.key});

  @override
  State<WebLaba2App> createState() => _WebLaba2AppState();
}

class _WebLaba2AppState extends State<WebLaba2App> {
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
