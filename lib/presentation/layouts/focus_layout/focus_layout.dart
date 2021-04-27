import 'package:flutter/material.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/common/logic/focus/i_focus_manager.dart';
import 'package:base_project/common/presentors/side_menu/i_side_menu_presenter.dart';

class FocusLayout extends StatelessWidget {
  final Widget child;
  final IFocusManager? focusManager;

  const FocusLayout({
    required Key key,
    required this.child,
    this.focusManager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (focusManager != null) {
          focusManager!.notifiListeners();
        }

        if (FocusScope.of(context).hasFocus) {
          FocusScope.of(context).unfocus();
        }

        dependencyContainer?.get<ISideMenuPresenter>().close();
      },
      child: child,
    );
  }
}
