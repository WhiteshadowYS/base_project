import 'package:auto_route/auto_route.dart';
import 'package:base_project/presentation/pages/additional_screens/splash_screen/splash_screen.dart';
import 'package:base_project/presentation/pages/auth_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:base_project/presentation/pages/auth_screens/login_screen/login_screen.dart';
import 'package:base_project/presentation/pages/auth_screens/registration_screen/registration_screen.dart';
import 'package:base_project/presentation/pages/auth_screens/start_screen/start_screen.dart';
import 'package:base_project/presentation/pages/auth_screens/terms_screen.dart/terms_screen.dart';
import 'package:base_project/presentation/pages/main_screens/home_screen/home_screen.dart';

const String bottomBar = 'bottom-bar';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    CustomRoute(
      fullscreenDialog: true,
      page: TermsScreen,
      path: '/auth/terms',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    AutoRoute(
      page: HomeScreen,
      path: '/home/$bottomBar',
    ),
    AutoRoute(
      page: LoginScreen,
      path: '/auth/login',
    ),
    AutoRoute(
      page: StartScreen,
      path: '/auth/start',
    ),
    AutoRoute(
      page: RegistrationScreen,
      path: '/auth/registration',
    ),
    AutoRoute(
      page: ForgotPasswordScreen,
      path: '/auth/forgot-password',
    ),
  ],
)
class $AppRouter {}
