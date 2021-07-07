import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:base_project/utils/res/app_data.dart';

class DialogLayout extends StatefulWidget {
  final Widget child;

  const DialogLayout({
    required this.child,
  });

  @override
  _DialogLayoutState createState() => _DialogLayoutState();
}

class _DialogLayoutState extends State<DialogLayout> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: AppData.durations.milliseconds400);
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() => setState(() {}));
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            InkWell(
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: Navigator.of(context).pop,
            ),
            widget.child,
          ],
        ),
      ),
    );
  }
}
