import 'package:flutter/material.dart';

class ContentButton extends StatelessWidget {
  final Widget child;
  final double radius;
  final Alignment alignment;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final void Function() onTap;

  ContentButton({
    required this.child,
    required this.onTap,
    this.radius = 8.0,
    this.alignment = Alignment.center,
    this.margin = const EdgeInsets.all(0.0),
    this.padding = const EdgeInsets.all(0.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: onTap,
          child: Container(
            alignment: alignment,
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
