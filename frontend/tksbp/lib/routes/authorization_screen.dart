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
class AuthorizationScreen extends ConsumerStatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  ConsumerState<AuthorizationScreen> createState() =>
      _AuthorizationScreenState();
}

class _AuthorizationScreenState extends ConsumerState<AuthorizationScreen> {
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
    final authModel = ref.watch(TKSBPDi.authNotifier);
    final border = authModel.maybeMap(
      orElse: () => const OutlineInputBorder(),
      nonValid: (value) => const OutlineInputBorder(
          borderSide: BorderSide(color: TopGColors.yRed)),
      error: (value) => const OutlineInputBorder(
          borderSide: BorderSide(color: TopGColors.yRed)),
    );
    final padding = kIsWeb || defaultTargetPlatform == TargetPlatform.windows
        ? 120.0
        : 15.0;
    return Scaffold(
      appBar: AppBar(
        leading: kIsWeb ? const SizedBox() : null,
        title: Text(S.of(context).authorization),
        centerTitle: true,
        actions: [
          SettingsButton(
            onTap: () async {
              await context.router.push(const SettingsRoute());
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    'assets/logo.png',
                    scale: 0.5,
                    opacity: const AlwaysStoppedAnimation(0.1),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ),
          Center(
            child: SizedBox(
              width: 600,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: TextField(
                        controller: nickController,
                        decoration: InputDecoration(
                          border: border,
                          labelText: S.of(context).login,
                        ),
                        style: const TextStyle(fontSize: 20),
                        inputFormatters: [AuthInputFormatter()],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: border,
                          labelText: S.of(context).password,
                        ),
                        style: const TextStyle(fontSize: 20),
                        inputFormatters: [AuthInputFormatter()],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: MainButton(
                        title: Text(
                          S.of(context).logIn,
                          style: TextStyle(
                            color: TopGType.regular.resolveColor(context),
                            fontSize: 24,
                          ),
                        ),
                        onPressed: () async {
                          final value = await authNotifier.login(
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
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextButton(
                        child: Text(
                          S.of(context).noAccountYet,
                          style: const TextStyle(fontSize: 24),
                        ),
                        onPressed: () async {
                          await context.router.push(const RegistrationRoute());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
