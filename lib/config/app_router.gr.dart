// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../presentation/authorization/screens/login/login_screen.dart' as _i2;
import '../presentation/home/screens/home/home_screen.dart' as _i5;
import '../presentation/home/screens/search/search_screen.dart' as _i6;
import '../presentation/profile/screens/profile_edit/profile_edit_screen.dart'
    as _i8;
import '../presentation/profile/screens/profile_view/profile_view_screen.dart'
    as _i7;
import '../presentation/shared/screens/bottom_bar/bottom_bar_screen.dart'
    as _i3;
import '../presentation/shared/screens/splash/splash_screen.dart' as _i1;
import 'app_router.dart' as _i4;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    LoginScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginScreen());
    },
    BottomBarScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BottomBarScreen());
    },
    HomeRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    HomeScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.HomeScreen());
    },
    SearchScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.SearchScreen());
    },
    ProfileViewScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.ProfileViewScreen());
    },
    ProfileEditScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.ProfileEditScreen());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i9.RouteConfig(LoginScreenRoute.name, path: '/auth/login'),
        _i9.RouteConfig(BottomBarScreenRoute.name,
            path: '/base/bottom-bar',
            children: [
              _i9.RouteConfig(HomeRouter.name,
                  path: 'home',
                  parent: BottomBarScreenRoute.name,
                  children: [
                    _i9.RouteConfig(HomeScreenRoute.name,
                        path: '', parent: HomeRouter.name),
                    _i9.RouteConfig(SearchScreenRoute.name,
                        path: 'search', parent: HomeRouter.name),
                    _i9.RouteConfig('*#redirect',
                        path: '*',
                        parent: HomeRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ]),
              _i9.RouteConfig(ProfileRouter.name,
                  path: 'profile',
                  parent: BottomBarScreenRoute.name,
                  children: [
                    _i9.RouteConfig(ProfileViewScreenRoute.name,
                        path: '', parent: ProfileRouter.name),
                    _i9.RouteConfig(ProfileEditScreenRoute.name,
                        path: 'edit', parent: ProfileRouter.name),
                    _i9.RouteConfig('*#redirect',
                        path: '*',
                        parent: ProfileRouter.name,
                        redirectTo: '',
                        fullMatch: true)
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i9.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i9.PageRouteInfo<void> {
  const LoginScreenRoute() : super(LoginScreenRoute.name, path: '/auth/login');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.BottomBarScreen]
class BottomBarScreenRoute extends _i9.PageRouteInfo<void> {
  const BottomBarScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(BottomBarScreenRoute.name,
            path: '/base/bottom-bar', initialChildren: children);

  static const String name = 'BottomBarScreenRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class HomeRouter extends _i9.PageRouteInfo<void> {
  const HomeRouter({List<_i9.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ProfileRouter extends _i9.PageRouteInfo<void> {
  const ProfileRouter({List<_i9.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreenRoute extends _i9.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i6.SearchScreen]
class SearchScreenRoute extends _i9.PageRouteInfo<void> {
  const SearchScreenRoute() : super(SearchScreenRoute.name, path: 'search');

  static const String name = 'SearchScreenRoute';
}

/// generated route for
/// [_i7.ProfileViewScreen]
class ProfileViewScreenRoute extends _i9.PageRouteInfo<void> {
  const ProfileViewScreenRoute() : super(ProfileViewScreenRoute.name, path: '');

  static const String name = 'ProfileViewScreenRoute';
}

/// generated route for
/// [_i8.ProfileEditScreen]
class ProfileEditScreenRoute extends _i9.PageRouteInfo<void> {
  const ProfileEditScreenRoute()
      : super(ProfileEditScreenRoute.name, path: 'edit');

  static const String name = 'ProfileEditScreenRoute';
}
