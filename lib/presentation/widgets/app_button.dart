import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final double radius;
  final double width;
  final double height;
  final Alignment alignment;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final void Function() onTap;

  AppButton({
    required this.child,
    required this.onTap,
    this.radius = 0.0,
    this.height = 40.0,
    this.width = double.infinity,
    this.alignment = Alignment.center,
    this.margin = const EdgeInsets.all(0.0),
    this.padding = const EdgeInsets.all(0.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(radius),
      ),
      height: height,
      width: width,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          radius: radius,
          onTap: onTap,
          child: Container(
            width: width,
            height: height,
            alignment: alignment,
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
