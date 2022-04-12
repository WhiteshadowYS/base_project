import 'dart:ui';

import 'package:flutter/material.dart';

class DialogLayout extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPop;
  final Color? background;
  final bool blurBackground;

  const DialogLayout({
    required this.child,
    this.onPop,
    this.background,
    this.blurBackground = true,
  });

  @override
  _DialogLayoutState createState() => _DialogLayoutState();
}

class _DialogLayoutState extends State<DialogLayout> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (widget.blurBackground)
            SizedBox(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  color: (widget.background ?? Colors.black).withOpacity(0.05),
                ),
              ),
            ),
          InkWell(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              widget.onPop?.call();
              Navigator.of(context).pop();
            },
          ),
          widget.child,
        ],
      ),
    );
  }
}
