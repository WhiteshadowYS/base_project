import 'package:base_project_template/data/managers/screen_manager/screen_manager.dart';
import 'package:flutter/material.dart';

class ScreenConnector extends StatelessWidget {
  final Widget Function(BuildContext, Widget) builder;
  final Widget? child;

  ScreenConnector({
    required this.builder,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ScreenManager.instance.updateScreen(context);
    });

    return builder(context, child ?? SizedBox());
  }
}
