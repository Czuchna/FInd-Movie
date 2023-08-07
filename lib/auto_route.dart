import 'package:auto_route/auto_route.dart';
import 'package:find_movie/screens/dashboard_screen.dart';
import 'package:find_movie/screens/login_screen.dart';
import 'package:find_movie/screens/register_screen.dart';

export 'auto_route.gr.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: LoginScreen, initial: true),
  AutoRoute(page: RegisterScreen),
  AutoRoute(page: DashboardScreen),
])
class $AppRouter {}
