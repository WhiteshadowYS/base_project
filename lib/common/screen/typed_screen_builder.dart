import 'package:flutter/material.dart';
import 'package:lalee_mobile/common/screen/i_screen_manager.dart';
import 'package:lalee_mobile/common/device_info/device_platform.dart';

class TypedScreenBuilder extends StatelessWidget {
  final IScreenManager screenManager;
  // final bool allowScaleWidget;
  final Widget Function(BuildContext, Widget)? phoneBuilder;
  final Widget Function(BuildContext, Widget)? tabletBuilder;
  final Widget Function(BuildContext, Widget)? webBuilder;
  final Widget? child;

  TypedScreenBuilder({
    required this.phoneBuilder,
    required this.screenManager,
    this.tabletBuilder,
    this.webBuilder,
    // this.allowScaleWidget = false,
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

        // if (allowScaleWidget && _child != null) {
        //   return _child;
        // }

        return _child ?? SizedBox();
      },
    );
  }
}
