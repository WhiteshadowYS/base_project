import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:base_project/config/app_router.gr.dart';

import 'i_side_menu_presenter.dart';

class TransitionSideMenuPresenter implements ISideMenuPresenter {
  final Widget Function(BuildContext context, Duration duration, bool state) menuBuilder;
  final Duration duration;

  TransitionSideMenuPresenter({
    required this.menuBuilder,
    required this.duration,
    required AppRouter router,
  }) {
    router.delegate().addListener(close);
  }

  @override
  bool get status => _isOpened.value;

  final ValueNotifier<bool> _isOpened = ValueNotifier<bool>(false);

  @override
  void show() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _isOpened.value = true;
    });
  }

  @override
  void close() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _isOpened.value = false;
    });
  }

  @override
  void invertState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _isOpened.value = !_isOpened.value;
    });
  }

  @override
  Widget builder({
    required BuildContext context,
    required Widget child,
  }) {
    return ValueListenableBuilder(
      valueListenable: _isOpened,
      builder: (BuildContext context, bool _isOpened, _) {
        return ListView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            menuBuilder(context, duration, _isOpened),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: child,
            ),
          ],
        );
      },
    );
  }

  @override
  void addListener(void Function() listener) => _isOpened.addListener(listener);

  @override
  void removeListener(void Function() listener) => _isOpened.removeListener(listener);
}
