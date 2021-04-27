import 'package:auto_route/auto_route.dart';

abstract class IBottomBarItem {
  final String svgImagePath;
  final PageRouteInfo pageRoute;

  IBottomBarItem({
    required this.svgImagePath,
    required this.pageRoute,
  });
}
