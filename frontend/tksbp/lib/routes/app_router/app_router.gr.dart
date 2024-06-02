// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthorizationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthorizationScreen(),
      );
    },
    QueryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QueryScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    TableRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TableScreen(),
      );
    },
  };
}

/// generated route for
/// [AuthorizationScreen]
class AuthorizationRoute extends PageRouteInfo<void> {
  const AuthorizationRoute({List<PageRouteInfo>? children})
      : super(
          AuthorizationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QueryScreen]
class QueryRoute extends PageRouteInfo<void> {
  const QueryRoute({List<PageRouteInfo>? children})
      : super(
          QueryRoute.name,
          initialChildren: children,
        );

  static const String name = 'QueryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationScreen]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TableScreen]
class TableRoute extends PageRouteInfo<void> {
  const TableRoute({List<PageRouteInfo>? children})
      : super(
          TableRoute.name,
          initialChildren: children,
        );

  static const String name = 'TableRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
