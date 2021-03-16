import 'package:base_project_template/domain/managers/screen_manager/screen_manager.dart';
import 'package:flutter/material.dart';
import 'package:base_project_template/domain/managers/device_info_manager/device_info_manager.dart';

class ScreenManagerBuilder extends StatelessWidget {
  final bool allowScaleWidget;
  final Widget Function(BuildContext, Widget)? phoneBuilder;
  final Widget Function(BuildContext, Widget)? tabletBuilder;
  final Widget Function(BuildContext, Widget)? webBuilder;
  final Widget? child;

  ScreenManagerBuilder({
    required this.phoneBuilder,
    this.tabletBuilder,
    this.webBuilder,
    this.allowScaleWidget = false,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DevicePlatform>(
      valueListenable: ScreenManager.instance.platformNotifier,
      builder: (BuildContext context, DevicePlatform platform, _) {
        Widget? _child;

        if (platform == DevicePlatform.Web && webBuilder != null) {
          _child = webBuilder!(context, child ?? SizedBox());
        }

        if (platform == DevicePlatform.Tablet && tabletBuilder != null && _child == null) {
          _child = tabletBuilder!(context, child ?? SizedBox());
        }

        if (phoneBuilder != null && _child == null) {
          _child = phoneBuilder!(context, child ?? SizedBox());
        }

        if (allowScaleWidget && _child != null) {
          return _child.scale;
        }

        return _child ?? SizedBox();
      },
    );
  }
}
