// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'screens/dashboard_screen.dart' as _i3;
import 'screens/login_screen.dart' as _i1;
import 'screens/register_screen.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.LoginScreen(key: args.key),
      );
    },
    RegisterScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterScreenRouteArgs>(
          orElse: () => const RegisterScreenRouteArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.RegisterScreen(key: args.key),
      );
    },
    DashboardScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardScreenRouteArgs>(
          orElse: () => const DashboardScreenRouteArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.DashboardScreen(key: args.key),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          LoginScreenRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          RegisterScreenRoute.name,
          path: '/register-screen',
        ),
        _i4.RouteConfig(
          DashboardScreenRoute.name,
          path: '/dashboard-screen',
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i4.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i5.Key? key})
      : super(
          LoginScreenRoute.name,
          path: '/',
          args: LoginScreenRouteArgs(key: key),
        );

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.RegisterScreen]
class RegisterScreenRoute extends _i4.PageRouteInfo<RegisterScreenRouteArgs> {
  RegisterScreenRoute({_i5.Key? key})
      : super(
          RegisterScreenRoute.name,
          path: '/register-screen',
          args: RegisterScreenRouteArgs(key: key),
        );

  static const String name = 'RegisterScreenRoute';
}

class RegisterScreenRouteArgs {
  const RegisterScreenRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'RegisterScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.DashboardScreen]
class DashboardScreenRoute extends _i4.PageRouteInfo<DashboardScreenRouteArgs> {
  DashboardScreenRoute({_i5.Key? key})
      : super(
          DashboardScreenRoute.name,
          path: '/dashboard-screen',
          args: DashboardScreenRouteArgs(key: key),
        );

  static const String name = 'DashboardScreenRoute';
}

class DashboardScreenRouteArgs {
  const DashboardScreenRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'DashboardScreenRouteArgs{key: $key}';
  }
}
