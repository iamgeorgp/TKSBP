import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final themeMode = theme.mode;
    final themeTitle = themeMode == TopGMode.light
        ? S.of(context).lightTheme
        : S.of(context).darkTheme;
    final themeIcon = themeMode == TopGMode.light
        ? Icons.sunny
        : Icons.nightlight_round_outlined;

    return Scaffold(
      appBar: AppBar(
        leading: kIsWeb ? const SizedBox() : null,
        title: Text(S.of(context).settings),
        centerTitle: true,
      ),
      body: SettingsView(
        settingBlocksList: [
          // Общие настройки
          SettingsBlock(
            title: S.of(context).settings,
            hasDivider: true,
            settingsList: [
              // Смена темы
              SettingsTyle(
                title: themeTitle,
                icon: themeIcon,
                onTap: () async {
                  await TopG.toggleThemeOf(context);
                },
              ),
              // Смена языка
              SettingsTyle(
                title: S.of(context).language,
                icon: Icons.language,
                lastInBlock: true,
                trailing: Text(
                  S.of(context).localeFull,
                  style: const TextStyle(color: TopGColors.blueCrayola),
                ),
                onTap: () async {
                  await ScarlettLocalization.switchLocaleOf(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
