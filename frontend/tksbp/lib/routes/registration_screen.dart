import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import '../di/tksbp_di.dart';
import '../features/auth/input_formatter.dart';
import '../storage/users_storage.dart';
import 'app_router/app_router.dart';

@RoutePage()
class RegistrationScreen extends ConsumerStatefulWidget {
  const RegistrationScreen({super.key});

  @override
  ConsumerState<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends ConsumerState<RegistrationScreen> {
  late final TextEditingController nickController;
  late final TextEditingController passwordController;
  bool canSend = false;

  @override
  void initState() {
    super.initState();
    nickController = TextEditingController();
    passwordController = TextEditingController();
    nickController.addListener(_onCheckSend);
    passwordController.addListener(_onCheckSend);
  }

  void _onCheckSend() {
    if (nickController.text.isEmpty || passwordController.text.isEmpty) {
      setState(() {
        canSend = false;
      });
    } else {
      setState(() {
        canSend = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.watch(TKSBPDi.authNotifier.notifier);
    final padding = kIsWeb || defaultTargetPlatform == TargetPlatform.windows
        ? 120.0
        : 15.0;
    return Scaffold(
      appBar: AppBar(
        leading: kIsWeb ? const SizedBox() : null,
        title: Text(S.of(context).registration),
        centerTitle: true,
        actions: [
          SettingsButton(
            onTap: () async {
              await context.router.push(const SettingsRoute());
            },
          )
        ],
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: TextField(
                    controller: nickController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: S.of(context).login,
                    ),
                    inputFormatters: [AuthInputFormatter()],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: S.of(context).password,
                    ),
                    inputFormatters: [AuthInputFormatter()],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: MainButton(
                    title: Text(
                      S.of(context).signUp,
                      style: TextStyle(
                        fontSize: 24,
                        color: TopGType.regular.resolveColor(context),
                      ),
                    ),
                    onPressed: () async {
                      final value = await authNotifier.register(
                        User(
                          login: nickController.text,
                          password: passwordController.text,
                        ),
                      );
                      await value.maybeWhen(
                        orElse: () {},
                        admin: () async {
                          await context.router.pushAndPopUntil(
                            const QueryRoute(),
                            predicate: (_) => false,
                          );
                        },
                        regular: () async {
                          await context.router.pushAndPopUntil(
                            const QueryRoute(),
                            predicate: (_) => false,
                          );
                        },
                      );
                    },
                    type: canSend ? TopGType.statistics : TopGType.disabled,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
