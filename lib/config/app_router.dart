import 'package:base_project/common/ui/dialog/i_dialog_service.dart';
import 'package:base_project/config/config.dart';

import 'app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:base_project/presentation/home/screens/home_screen/home_screen.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen.dart';
import 'package:base_project/presentation/home/screens/search_screen/search_screen.dart';
import 'package:base_project/presentation/shared/screens/base_screen/base_screen.dart';
import 'package:base_project/presentation/shared/screens/splash_screen/splash_screen.dart';
import 'package:base_project/presentation/profile/screens/profile_screen/profile_screen.dart';
import 'package:base_project/presentation/profile/screens/profile_edit_screen/profile_edit_screen.dart';

export 'app_router.gr.dart';
export 'package:auto_route/auto_route.dart';

AppRouter get router => getIt<AppRouter>();
IDialogService get dialog => getIt<IDialogService>();

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
      page: BaseScreen,
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
            AutoRoute(path: '', page: ProfileScreen),
            AutoRoute(path: 'edit', page: ProfileEditScreen),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
