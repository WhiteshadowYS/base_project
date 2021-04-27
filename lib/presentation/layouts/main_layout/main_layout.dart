import 'package:flutter/material.dart';
import 'package:base_project/common/logic/focus/i_focus_manager.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/domain/shared/dictionary/language.dart';
import 'package:base_project/common/presentors/dictionary/i_dictionary.dart';
import 'package:base_project/common/presentors/screen/i_screen_manager.dart';
import 'package:base_project/presentation/layouts/focus_layout/focus_layout.dart';
import 'package:base_project/common/presentors/side_menu/i_side_menu_presenter.dart';
import 'package:base_project/common/presentors/loader/i_loader_presenter.dart';

class MainLayout extends StatefulWidget {
  final Color background;
  final Widget child;
  final Widget? appbar;
  final IFocusManager? focusManager;

  const MainLayout({
    required this.child,
    this.background = DefaultAppColors.white,
    this.appbar,
    this.focusManager,
  });

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final _screenManager = dependencyContainer!.get<IScreenManager>();
  final _sideMenuPresenter = dependencyContainer!.get<ISideMenuPresenter>();
  final _dictionary = dependencyContainer!.get<IDictionary<Language>>();

  @override
  void initState() {
    super.initState();
    _sideMenuPresenter.addListener(listener);
    _dictionary.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _sideMenuPresenter.removeListener(listener);
    _dictionary.removeListener(listener);
  }

  void listener() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.background,
      resizeToAvoidBottomInset: true,
      body: _screenManager.screenConnector(
        builder: (BuildContext context, _) {
          return Directionality(
            textDirection: dictionary.isRtl ? TextDirection.rtl : TextDirection.ltr,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: _sideMenuPresenter.builder(
                context: context,
                child: LoaderLayout(
                  loaderPresenter: dependencyContainer!.get<ILoaderPresenter>(),
                  child: Stack(
                    children: [
                      FocusLayout(
                        key: Key(widget.child.runtimeType.toString() + '[MainLayout]' + '[FocusLayout]'),
                        focusManager: widget.focusManager,
                        child: widget.child,
                      ),
                      if (widget.appbar != null)
                        AnimatedOpacity(
                          opacity: !_sideMenuPresenter.status ? 1.0 : 0.0,
                          duration: AppData.durations.milliseconds300,
                          child: widget.appbar ?? SizedBox(),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
