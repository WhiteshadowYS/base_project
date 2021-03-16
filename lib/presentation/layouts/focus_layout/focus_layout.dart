import 'package:flutter/material.dart';

class FocusLayout extends StatelessWidget {
  final Widget child;

  const FocusLayout({
    required Key key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (FocusScope.of(context).hasFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      child: child,
    );
  }
}
