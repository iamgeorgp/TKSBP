import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../authorization_screen.dart';
import '../registration_screen.dart';
import '../settings_screen.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthorizationRoute.page, initial: true),
        AutoRoute(
          page: RegistrationRoute.page,
        ),
        AutoRoute(page: SettingsRoute.page),
      ];
}
