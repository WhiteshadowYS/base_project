import 'package:auto_route/auto_route.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen.dart';
import 'package:base_project/presentation/home/screens/home/home_screen.dart';
import 'package:base_project/presentation/home/screens/search/search_screen.dart';
import 'package:base_project/presentation/profile/screens/profile_edit/profile_edit_screen.dart';
import 'package:base_project/presentation/profile/screens/profile_view/profile_view_screen.dart';
import 'package:base_project/presentation/shared/screens/bottom_bar/bottom_bar_screen.dart';
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
    AutoRoute(
      page: BottomBarScreen,
      path: '/base/$bottomBar',
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: HomeScreen),
            AutoRoute(path: 'search', page: SearchScreen),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: ProfileViewScreen),
            AutoRoute(path: 'edit', page: ProfileEditScreen),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
