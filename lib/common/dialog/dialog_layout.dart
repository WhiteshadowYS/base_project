import 'package:base_project/common/dialog/dialog_presenter.dart';
import 'package:flutter/material.dart';

class DialogLayout extends StatelessWidget {
  final Widget child;

  const DialogLayout({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withOpacity(0.2),
      child: Stack(
        alignment: Alignment.center,
        children: [
          InkWell(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: Navigator.of(context).pop,
          ),
          child,
        ],
      ),
    );
  }
}
