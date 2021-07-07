import 'package:flutter/material.dart';
import 'package:base_project/config/config.dart';

class BottomBarExample1 extends StatefulWidget {
  final List<Widget> children;
  final bool isOpened;
  final Color? borderColor;
  final Color? backgroundColor;
  final void Function(VoidCallback)? addUpdateListener;
  final void Function(VoidCallback)? removeUpdateListner;

  const BottomBarExample1({
    required this.isOpened,
    required this.children,
    this.addUpdateListener,
    this.removeUpdateListner,
    this.borderColor,
    this.backgroundColor,
  });

  @override
  _BottomBarExample1State createState() => _BottomBarExample1State();
}

class _BottomBarExample1State extends State<BottomBarExample1> {
  @override
  void initState() {
    super.initState();
    widget.addUpdateListener?.call(listener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.removeUpdateListner?.call(listener);
  }

  void listener() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: theme.background,
      child: SafeArea(
        top: false,
        bottom: widget.isOpened,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: widget.isOpened ? 80.0 : 0.0,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            border: Border(
              top: BorderSide(
                color: widget.borderColor ?? Theme.of(context).hintColor,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.children.map<Widget>((child) {
              return Expanded(child: child);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
