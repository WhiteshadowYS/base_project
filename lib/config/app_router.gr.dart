// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../presentation/authorization/screens/login/login_screen.dart' as _i2;
import '../presentation/home/screens/home/home_screen.dart' as _i5;
import '../presentation/shared/screens/bottom_bar/bottom_bar_screen.dart'
    as _i3;
import '../presentation/shared/screens/splash/splash_screen.dart' as _i1;
import 'app_router.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    LoginScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen());
    },
    BottomBarScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BottomBarScreen());
    },
    HomeRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    HomeScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.HomeScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i6.RouteConfig(LoginScreenRoute.name, path: '/auth/login'),
        _i6.RouteConfig(BottomBarScreenRoute.name,
            path: '/base/bottom-bar',
            children: [
              _i6.RouteConfig(HomeRouter.name,
                  path: 'home',
                  parent: BottomBarScreenRoute.name,
                  children: [
                    _i6.RouteConfig(HomeScreenRoute.name,
                        path: '', parent: HomeRouter.name),
                    _i6.RouteConfig('*#redirect',
                        path: '*',
                        parent: HomeRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i6.PageRouteInfo<void> {
  const LoginScreenRoute() : super(LoginScreenRoute.name, path: '/auth/login');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.BottomBarScreen]
class BottomBarScreenRoute extends _i6.PageRouteInfo<void> {
  const BottomBarScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(BottomBarScreenRoute.name,
            path: '/base/bottom-bar', initialChildren: children);

  static const String name = 'BottomBarScreenRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter({List<_i6.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '');

  static const String name = 'HomeScreenRoute';
}
