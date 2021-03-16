import 'package:logging/logging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:base_project_template/presentation/widgets/unknown_page.dart';
import 'package:base_project_template/presentation/widgets/splash_screen.dart';
import 'package:base_project_template/presentation/pages/home_page/home_page.dart';
import 'package:base_project_template/presentation/pages/login_page/login_page.dart';
import 'package:base_project_template/domain/managers/route_manager/route_manager.dart';

export 'package:base_project_template/presentation/widgets/unknown_page.dart';
export 'package:base_project_template/presentation/widgets/splash_screen.dart';
export 'package:base_project_template/presentation/pages/home_page/home_page.dart';
export 'package:base_project_template/presentation/pages/login_page/login_page.dart';

class RouteBuilder {
  static Logger get logger => Logger('[RouteBuilder]');

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash_screen:
        return _defaultRoute(
          settings: settings,
          page: SplashScreen(),
        );

      case Routes.home_page:
        return _defaultRoute(
          settings: settings,
          page: HomePage(),
        );

      case Routes.login_page:
        return _defaultRoute(
          settings: settings,
          page: LoginPage(),
        );

      default:
        logger.info('<onGenerateRoute> => invalid route!!! => ${settings.name}');
        return _defaultRoute(
          settings: settings,
          page: UnknownPage(),
        );
    }
  }

  static Route<dynamic> _defaultRoute({
    required RouteSettings settings,
    required Widget page,
  }) {
    return PageRouteBuilder<dynamic>(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return page;
      },
      transitionDuration: const Duration(),
    );
  }
}
