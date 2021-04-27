// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../presentation/pages/additional_screens/splash_screen/splash_screen.dart'
    as _i2;
import '../presentation/pages/auth_screens/forgot_password_screen/forgot_password_screen.dart'
    as _i8;
import '../presentation/pages/auth_screens/login_screen/login_screen.dart'
    as _i5;
import '../presentation/pages/auth_screens/registration_screen/registration_screen.dart'
    as _i7;
import '../presentation/pages/auth_screens/start_screen/start_screen.dart'
    as _i6;
import '../presentation/pages/auth_screens/terms_screen.dart/terms_screen.dart'
    as _i3;
import '../presentation/pages/main_screens/home_screen/home_screen.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i2.SplashScreen());
    },
    TermsScreenRoute.name: (entry) {
      return _i1.CustomPage(
          entry: entry,
          child: _i3.TermsScreen(),
          fullscreenDialog: true,
          transitionsBuilder: _i1.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    },
    HomeScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.HomeScreen());
    },
    LoginScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.LoginScreen());
    },
    StartScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.StartScreen());
    },
    RegistrationScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.RegistrationScreen());
    },
    ForgotPasswordScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.ForgotPasswordScreen());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(TermsScreenRoute.name, path: '/auth/terms'),
        _i1.RouteConfig(HomeScreenRoute.name, path: '/home/bottom-bar'),
        _i1.RouteConfig(LoginScreenRoute.name, path: '/auth/login'),
        _i1.RouteConfig(StartScreenRoute.name, path: '/auth/start'),
        _i1.RouteConfig(RegistrationScreenRoute.name,
            path: '/auth/registration'),
        _i1.RouteConfig(ForgotPasswordScreenRoute.name,
            path: '/auth/forgot-password')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class TermsScreenRoute extends _i1.PageRouteInfo {
  const TermsScreenRoute() : super(name, path: '/auth/terms');

  static const String name = 'TermsScreenRoute';
}

class HomeScreenRoute extends _i1.PageRouteInfo {
  const HomeScreenRoute() : super(name, path: '/home/bottom-bar');

  static const String name = 'HomeScreenRoute';
}

class LoginScreenRoute extends _i1.PageRouteInfo {
  const LoginScreenRoute() : super(name, path: '/auth/login');

  static const String name = 'LoginScreenRoute';
}

class StartScreenRoute extends _i1.PageRouteInfo {
  const StartScreenRoute() : super(name, path: '/auth/start');

  static const String name = 'StartScreenRoute';
}

class RegistrationScreenRoute extends _i1.PageRouteInfo {
  const RegistrationScreenRoute() : super(name, path: '/auth/registration');

  static const String name = 'RegistrationScreenRoute';
}

class ForgotPasswordScreenRoute extends _i1.PageRouteInfo {
  const ForgotPasswordScreenRoute()
      : super(name, path: '/auth/forgot-password');

  static const String name = 'ForgotPasswordScreenRoute';
}
