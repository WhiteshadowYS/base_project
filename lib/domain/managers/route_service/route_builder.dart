import 'package:base_project_template/domain/managers/route_service/models/routes.dart';
import 'package:base_project_template/presentation/pages/home_page/home_page.dart';
import 'package:base_project_template/presentation/pages/login_page/login_page.dart';
import 'package:base_project_template/presentation/widgets/splash_screen.dart';
import 'package:base_project_template/presentation/widgets/unknown_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteBuilder {
  static const String tag = '[RouteBuilder]';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash_screen:
        return _defaultRoute(
          settings: settings,
          page: SplashScreen(),
        );

      case Routes.home_screen:
        return _defaultRoute(
          settings: settings,
          page: HomePage(),
        );

      case Routes.login_screen:
        return _defaultRoute(
          settings: settings,
          page: LoginPage(),
        );

      default:
        print('$tag => <onGenerateRoute> => invalid route!!! => ${settings.name}');
        return _defaultRoute(
          settings: settings,
          page: UnknownPage(),
        );
    }
  }

  static Route<dynamic> _defaultRoute({RouteSettings? settings, Widget? page}) {
    return PageRouteBuilder<dynamic>(
      transitionDuration: const Duration(),
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) =>
          page ?? SizedBox(),
    );
  }
}
