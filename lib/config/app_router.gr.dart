// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../presentation/authorization/screens/login/login_screen.dart' as _i3;
import '../presentation/main/home_screen/home_screen.dart' as _i4;
import '../presentation/main/profile_screen/profile_screen.dart' as _i5;
import '../presentation/shared/screens/splash_screen/splash_screen.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i2.SplashScreen());
    },
    LoginScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.LoginScreen());
    },
    HomeScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i4.HomeScreen());
    },
    ProfileScreenRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i5.ProfileScreen());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(LoginScreenRoute.name, path: '/auth/login'),
        _i1.RouteConfig(HomeScreenRoute.name, path: '/main/home/bottom-bar'),
        _i1.RouteConfig(ProfileScreenRoute.name,
            path: '/main/profile/bottom-bar')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class LoginScreenRoute extends _i1.PageRouteInfo {
  const LoginScreenRoute() : super(name, path: '/auth/login');

  static const String name = 'LoginScreenRoute';
}

class HomeScreenRoute extends _i1.PageRouteInfo {
  const HomeScreenRoute() : super(name, path: '/main/home/bottom-bar');

  static const String name = 'HomeScreenRoute';
}

class ProfileScreenRoute extends _i1.PageRouteInfo {
  const ProfileScreenRoute() : super(name, path: '/main/profile/bottom-bar');

  static const String name = 'ProfileScreenRoute';
}
