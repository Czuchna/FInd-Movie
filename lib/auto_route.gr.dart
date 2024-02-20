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

import 'screens/dashboard_screen.dart' as _i1;
import 'screens/login_screen.dart' as _i3;
import 'screens/register_screen.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DashboardScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardScreen(),
      );
    },
    RegisterScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          DashboardScreenRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          RegisterScreenRoute.name,
          path: '/register-screen',
        ),
        _i4.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
      ];
}

/// generated route for
/// [_i1.DashboardScreen]
class DashboardScreenRoute extends _i4.PageRouteInfo<void> {
  const DashboardScreenRoute()
      : super(
          DashboardScreenRoute.name,
          path: '/',
        );

  static const String name = 'DashboardScreenRoute';
}

/// generated route for
/// [_i2.RegisterScreen]
class RegisterScreenRoute extends _i4.PageRouteInfo<void> {
  const RegisterScreenRoute()
      : super(
          RegisterScreenRoute.name,
          path: '/register-screen',
        );

  static const String name = 'RegisterScreenRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i4.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}
