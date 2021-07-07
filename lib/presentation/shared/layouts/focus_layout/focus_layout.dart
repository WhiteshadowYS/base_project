import 'package:base_project/common/ui/focus/i_focus_manager.dart';
import 'package:flutter/material.dart';

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
        focusManager?.notifiListeners();
        FocusManager.instance.primaryFocus?.unfocus();
        // getIt<ISideMenuPresenter>().close();
      },
      child: child,
    );
  }
}
