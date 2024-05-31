import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import 'app_router/app_router.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                      title: Text(S.of(context).signUp),
                      onPressed: () async {
                        await context.router.pushAndPopUntil(
                          const TableRoute(),
                          predicate: (route) => false,
                        );
                      },
                      type: canSend ? TopGType.action : TopGType.disabled,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
