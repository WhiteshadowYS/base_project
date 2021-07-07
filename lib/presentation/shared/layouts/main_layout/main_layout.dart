import 'package:base_project/common/ui/focus/i_focus_manager.dart';
import 'package:base_project/presentation/shared/layouts/focus_layout/focus_layout.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  final Color background;
  final Widget child;
  final Widget? appbar;
  final IFocusManager? focusManager;

  const MainLayout({
    required this.child,
    this.background = Colors.white,
    this.appbar,
    this.focusManager,
  });

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  // final _screenManager = getIt<IScreenManager>();
  // final _sideMenuPresenter = getIt<ISideMenuPresenter>();
  // final _dictionary = getIt<IDictionary<Language>>();

  @override
  void initState() {
    super.initState();
    // _sideMenuPresenter.addListener(listener);
    // _dictionary.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    // _sideMenuPresenter.removeListener(listener);
    // _dictionary.removeListener(listener);
  }

  void listener() => setState(() {});

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
                focusManager: widget.focusManager,
                child: widget.child,
              ),
              // if (widget.appbar != null)
              //   AnimatedOpacity(
              //     opacity: !_sideMenuPresenter.status ? 1.0 : 0.0,
              //     duration: AppData.durations.milliseconds300,
              //     child: widget.appbar ?? SizedBox(),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
