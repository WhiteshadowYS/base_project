import 'package:auto_route/auto_route.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen.dart';
import 'package:base_project/presentation/shared/screens/splash/splash_screen.dart';

export 'package:auto_route/auto_route.dart';

export 'app_router.gr.dart';

const String bottomBar = 'bottom-bar';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen, Page, Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(
      page: LoginScreen,
      path: '/auth/login',
    ),
  ],
)
class $AppRouter {}
