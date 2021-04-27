import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/config/injection_config.dart';

class BottomBarItem extends StatelessWidget {
  final bool isActive;
  final Color enabledColor;
  final Color disabledColor;
  final String svgImagePath;
  final PageRouteInfo route;

  BottomBarItem({
    required this.isActive,
    required this.svgImagePath,
    required this.route,
    required this.enabledColor,
    required this.disabledColor,
  });

  AppRouter get _router => dependencyContainer!.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SizedBox(
          height: 60.0,
          width: 60.0,
          child: InkWell(
            borderRadius: BorderRadius.circular(50.0),
            onTap: () => _router.replace(route),
            child: SvgPicture.asset(
              svgImagePath,
              color: isActive ? enabledColor : disabledColor,
            ),
          ),
        ),
      ),
    );
  }
}
