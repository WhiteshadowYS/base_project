import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'i_bottom_bar_presenter.dart';

class DefaultBottomBarPresenter implements IBottomBarPresenter {
  final Widget Function(DefaultBottomBarPresenter, bool) bottomBarBuilder;

  DefaultBottomBarPresenter({
    required this.bottomBarBuilder,
  });

  final ValueNotifier<bool> _bottomBarNotifier = ValueNotifier<bool>(false);

  @override
  void showBottomBar() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _bottomBarNotifier.value = true;
    });
  }

  @override
  void closeBottomBar() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _bottomBarNotifier.value = false;
    });
  }

  @override
  Widget builder(BuildContext context, Widget? child) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Column(
        children: [
          Expanded(child: child ?? Container()),
          ValueListenableBuilder(
            valueListenable: _bottomBarNotifier,
            builder: (BuildContext context, bool value, _) => bottomBarBuilder(this, value),
          ),
        ],
      ),
    );
  }
}
