// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../presentation/authorization/screens/login/login_screen.dart' as _i4;
import '../presentation/home/screens/home_screen/home_screen.dart' as _i7;
import '../presentation/home/screens/search_screen/search_screen.dart' as _i8;
import '../presentation/profile/screens/profile_edit_screen/profile_edit_screen.dart'
    as _i10;
import '../presentation/profile/screens/profile_screen/profile_screen.dart'
    as _i9;
import '../presentation/shared/screens/base_screen/base_screen.dart' as _i5;
import '../presentation/shared/screens/splash_screen/splash_screen.dart' as _i3;
import 'app_router.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashScreen();
        }),
    LoginScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.LoginScreen();
        }),
    BaseScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.BaseScreen();
        }),
    HomeRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.EmptyRouterPage();
        }),
    ProfileRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.EmptyRouterPage();
        }),
    HomeScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.HomeScreen();
        }),
    SearchScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.SearchScreen();
        }),
    ProfileScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.ProfileScreen();
        }),
    ProfileEditScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.ProfileEditScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(LoginScreenRoute.name, path: '/auth/login'),
        _i1.RouteConfig(BaseScreenRoute.name,
            path: '/base/bottom-bar',
            children: [
              _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
                _i1.RouteConfig(HomeScreenRoute.name, path: ''),
                _i1.RouteConfig(SearchScreenRoute.name, path: 'search'),
                _i1.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ]),
              _i1.RouteConfig(ProfileRouter.name, path: 'profile', children: [
                _i1.RouteConfig(ProfileScreenRoute.name, path: ''),
                _i1.RouteConfig(ProfileEditScreenRoute.name, path: 'edit'),
                _i1.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ])
            ])
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

class BaseScreenRoute extends _i1.PageRouteInfo {
  const BaseScreenRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/base/bottom-bar', initialChildren: children);

  static const String name = 'BaseScreenRoute';
}

class HomeRouter extends _i1.PageRouteInfo {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

class ProfileRouter extends _i1.PageRouteInfo {
  const ProfileRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

class HomeScreenRoute extends _i1.PageRouteInfo {
  const HomeScreenRoute() : super(name, path: '');

  static const String name = 'HomeScreenRoute';
}

class SearchScreenRoute extends _i1.PageRouteInfo {
  const SearchScreenRoute() : super(name, path: 'search');

  static const String name = 'SearchScreenRoute';
}

class ProfileScreenRoute extends _i1.PageRouteInfo {
  const ProfileScreenRoute() : super(name, path: '');

  static const String name = 'ProfileScreenRoute';
}

class ProfileEditScreenRoute extends _i1.PageRouteInfo {
  const ProfileEditScreenRoute() : super(name, path: 'edit');

  static const String name = 'ProfileEditScreenRoute';
}
