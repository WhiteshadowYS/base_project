import 'package:auto_route/auto_route.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen.dart';
import 'package:base_project/presentation/main/home_screen/home_screen.dart';
import 'package:base_project/presentation/main/profile_screen/profile_screen.dart';
import 'package:base_project/presentation/shared/screens/splash_screen/splash_screen.dart';

const String bottomBar = 'bottom-bar';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(
      page: LoginScreen,
      path: '/auth/login',
    ),
    AutoRoute(
      page: HomeScreen,
      path: '/main/home/$bottomBar',
    ),
    AutoRoute(
      page: ProfileScreen,
      path: '/main/profile/$bottomBar',
    ),
  ],
)
class $AppRouter {}
