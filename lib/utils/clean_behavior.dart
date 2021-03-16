import 'package:flutter/material.dart';

class CleanBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class CleanedListView extends StatelessWidget {
  final String keyValue;
  final List<Widget>? children;

  CleanedListView({
    required this.keyValue,
    this.children,
  }) : super(key: Key(keyValue + 'CleanedListView'));

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CleanBehavior(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        key: Key(keyValue),
        children: children ?? [],
      ),
    );
  }
}
