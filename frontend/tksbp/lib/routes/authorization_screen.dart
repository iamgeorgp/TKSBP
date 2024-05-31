import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import 'app_router/app_router.dart';

@RoutePage()
class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
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
  Widget build(BuildContext context) => Scaffold(
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
                  Expanded(flex: 1, child: SizedBox()),
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
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          controller: nickController,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: S.of(context).login,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: S.of(context).password,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: MainButton(
                          title: Text(S.of(context).logIn),
                          onPressed: () async {
                            await context.router.push(const QueryRoute());
                          },
                          type: canSend ? TopGType.action : TopGType.disabled,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: MainButton(
                          title: Text(S.of(context).noAccountYet),
                          onPressed: () async {
                            await context.router
                                .push(const RegistrationRoute());
                          },
                          type: TopGType.surge,
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
