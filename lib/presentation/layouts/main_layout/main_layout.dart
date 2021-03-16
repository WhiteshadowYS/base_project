import 'package:base_project_template/domain/managers/screen_manager/screen_manager_connector.dart';
import 'package:flutter/material.dart';
import 'package:base_project_template/presentation/layouts/focus_layout/focus_layout.dart';

class MainLayout extends StatefulWidget {
  final Color background;
  final bool showAppBar;
  final bool showBottomBar;
  final Widget child;

  const MainLayout({
    required Key key,
    required this.child,
    this.background = Colors.white,
    this.showAppBar = true,
    this.showBottomBar = true,
  }) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.showAppBar ? null : null,
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
                  // ...vm.loaders.map<Widget>((e) {
                  //   return e.widget;
                  // }).toList(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
