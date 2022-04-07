import 'package:base_project/common/ui/loader/loader_layout.dart';
import 'package:base_project/presentation/shared/layouts/focus_layout/focus_layout.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  final Color background;
  final Widget child;
  final Widget? appbar;

  const MainLayout({
    required this.child,
    this.background = Colors.white,
    this.appbar,
  });

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.background,
      resizeToAvoidBottomInset: true,
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              FocusLayout(
                key: Key(widget.child.runtimeType.toString() + '[MainLayout]' + '[FocusLayout]'),
                child: LoaderLayout(
                  child: widget.child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
