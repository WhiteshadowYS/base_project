import 'package:flutter/material.dart';

abstract class ISideMenuPresenter {
  bool get status;

  void show();
  void close();
  void invertState();

  void addListener(void Function() listener);
  void removeListener(void Function() listener);

  Widget builder({
    required BuildContext context,
    required Widget child,
  });
}
