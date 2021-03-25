import 'package:lalee_mobile/common/screen/i_screen_manager.dart';
import 'package:lalee_mobile/config/injection_config.dart';
import 'package:flutter/material.dart';
import 'package:lalee_mobile/presentation/layouts/app_bar/app_top_bar.dart';
import 'package:lalee_mobile/presentation/layouts/focus_layout/focus_layout.dart';

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
  final _screenManager = dependencyContainer!.get<IScreenManager>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTopBar(),
      backgroundColor: widget.background,
      body: _screenManager.screenConnector(
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
