import 'package:base_project_template/domain/managers/dialog_manager/dialog_manager.dart';
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
            onTap: DialogManager.instance.close,
          ),
          child,
        ],
      ),
    );
  }
}
