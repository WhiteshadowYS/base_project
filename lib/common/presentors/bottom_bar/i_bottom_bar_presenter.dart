import 'package:flutter/material.dart';

abstract class IBottomBarPresenter {
  void showBottomBar();
  void closeBottomBar();

  Widget builder(
    BuildContext context,
    Widget? child,
  ) {
    return child ?? Container();
  }
}
