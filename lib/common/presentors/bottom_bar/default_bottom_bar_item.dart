import 'i_bottom_bar_item.dart';
import 'package:auto_route/auto_route.dart';

class DefaultBottomBarItem implements IBottomBarItem {
  @override
  final String svgImagePath;

  @override
  final PageRouteInfo pageRoute;

  DefaultBottomBarItem({
    required this.svgImagePath,
    required this.pageRoute,
  });
}
