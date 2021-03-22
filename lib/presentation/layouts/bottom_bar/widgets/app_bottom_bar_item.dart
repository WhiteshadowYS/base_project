import 'package:flutter/material.dart';
import 'package:base_project_template/domain/theme/custom_theme.dart';

class AppBottomBarItem extends StatelessWidget {
  final double iconSize;
  final IconData icon;
  final String? page;
  final bool isActive;
  final void Function()? onTap;

  const AppBottomBarItem({
    required Key key,
    required this.icon,
    this.onTap,
    this.page,
    this.isActive = false,
    this.iconSize = 32.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: iconSize * 1.5,
        width: iconSize * 1.5,
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? CustomTheme.colors?.accentColor.withOpacity(0.6) : Colors.transparent,
        ),
        child: InkWell(
          child: Icon(
            icon,
            size: iconSize,
            color: CustomTheme.colors?.buttonFont,
          ),
        ),
      ),
    );
  }
}
