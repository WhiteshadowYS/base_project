import 'package:flutter/material.dart';

abstract class IBottomBar {
  void init();
  void showBottomBar();
  void closeBottomBar();

  Widget builder(
    BuildContext context,
    Widget? child,
  ) {
    return child ?? Container();
  }
}
