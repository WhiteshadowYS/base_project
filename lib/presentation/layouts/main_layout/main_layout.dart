import 'package:flutter/material.dart';
import 'package:base_project_template/presentation/layouts/app_bar/app_top_bar.dart';
import 'package:base_project_template/presentation/layouts/focus_layout/focus_layout.dart';
import 'package:base_project_template/data/managers/screen_manager/screen_manager_connector.dart';

class MainLayout extends StatefulWidget {
  final Color background;
  final Widget child;

  const MainLayout({
    required Key key,
    required this.child,
    this.background = Colors.white,
  }) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTopBar(),
      backgroundColor: widget.background,
      body: ScreenConnector(
        builder: (BuildContext context, _) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  FocusLayout(
                    key: Key(widget.child.runtimeType.toString() + '[MainLayout]' + '[FocusLayout]'),
                    child: widget.child,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
