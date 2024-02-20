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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'screens/dashboard_screen.dart' as _i1;
import 'screens/login_screen.dart' as _i3;
import 'screens/primary_screen.dart' as _i4;
import 'screens/register_screen.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DashboardScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardScreen(),
      );
    },
    RegisterScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
    PrimaryScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PrimaryScreen(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          DashboardScreenRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          RegisterScreenRoute.name,
          path: '/register-screen',
        ),
        _i5.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
        _i5.RouteConfig(
          PrimaryScreenRoute.name,
          path: '/primary-screen',
        ),
      ];
}

/// generated route for
/// [_i1.DashboardScreen]
class DashboardScreenRoute extends _i5.PageRouteInfo<void> {
  const DashboardScreenRoute()
      : super(
          DashboardScreenRoute.name,
          path: '/',
        );

  static const String name = 'DashboardScreenRoute';
}

/// generated route for
/// [_i2.RegisterScreen]
class RegisterScreenRoute extends _i5.PageRouteInfo<void> {
  const RegisterScreenRoute()
      : super(
          RegisterScreenRoute.name,
          path: '/register-screen',
        );

  static const String name = 'RegisterScreenRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i5.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i4.PrimaryScreen]
class PrimaryScreenRoute extends _i5.PageRouteInfo<void> {
  const PrimaryScreenRoute()
      : super(
          PrimaryScreenRoute.name,
          path: '/primary-screen',
        );

  static const String name = 'PrimaryScreenRoute';
}
