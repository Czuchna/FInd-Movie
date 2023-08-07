import 'package:auto_route/auto_route.dart';
import 'package:find_movie/auto_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter(navigatorKey);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Find Movie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(appRouter),
    );
  }
}
