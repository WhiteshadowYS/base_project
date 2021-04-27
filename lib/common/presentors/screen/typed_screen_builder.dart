import 'package:flutter/material.dart';
import 'package:base_project/common/logic/device_info/device_platform.dart';

import 'i_screen_manager.dart';

class TypedScreenBuilder extends StatelessWidget {
  final IScreenManager screenManager;
  final Widget Function(BuildContext, Widget)? phoneBuilder;
  final Widget Function(BuildContext, Widget)? tabletBuilder;
  final Widget Function(BuildContext, Widget)? webBuilder;
  final Widget? child;

  TypedScreenBuilder({
    required this.phoneBuilder,
    required this.screenManager,
    this.tabletBuilder,
    this.webBuilder,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DevicePlatform>(
      valueListenable: screenManager.platformNotifier,
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

        return _child ?? SizedBox();
      },
    );
  }
}
