import 'package:flutter/material.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/common/presentors/bottom_bar/i_bottom_bar_item.dart';
import 'package:base_project/presentation/layouts/bottom_bar/bottom_bar_item.dart';

class BottomBar extends StatefulWidget {
  final bool isOpened;
  final Color color;
  final AppRouter router;
  final List<IBottomBarItem> items;
  final Color enabledItemColor;
  final Color disabledItemColor;

  const BottomBar({
    required this.isOpened,
    required this.color,
    required this.items,
    required this.router,
    required this.enabledItemColor,
    required this.disabledItemColor,
  });

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  AppRouter get _router => dependencyContainer!.get<AppRouter>();

  @override
  void initState() {
    super.initState();
    _router.delegate().addListener(listener);
  }

  void listener() => setState(() {});

  @override
  void dispose() {
    super.dispose();
    _router.delegate().removeListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: DefaultAppColors.white,
      child: SafeArea(
        top: false,
        bottom: widget.isOpened,
        child: AnimatedContainer(
          duration: AppData.durations.milliseconds200,
          height: widget.isOpened ? AppData.settings.bottomBarHeight : 0.0,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: DefaultAppColors.background,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.items.map<Widget>((item) {
              return BottomBarItem(
                isActive: item.pageRoute.path == _router.current?.path,
                enabledColor: widget.enabledItemColor,
                disabledColor: widget.disabledItemColor,
                svgImagePath: item.svgImagePath,
                route: item.pageRoute,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
