import 'package:logging/logging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'i_bottom_bar.dart';

class DefaultBottomBar implements IBottomBar {
  Logger get _logger => Logger('[$runtimeType #${identityHashCode(this)}] =>');

  final void Function(void Function(bool) listener) addListener;
  final Widget Function(bool) bottomBarBuilder;

  DefaultBottomBar({
    required this.addListener,
    required this.bottomBarBuilder,
  });

  @override
  void init() {
    addListener((bool show) {
      if (show) {
        showBottomBar();
      } else {
        closeBottomBar();
      }
    });
  }

  final ValueNotifier<bool> _bottomBarNotifier = ValueNotifier<bool>(false);

  @override
  void showBottomBar() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _bottomBarNotifier.value = true;
      _logger.fine('Opened');
    });
  }

  @override
  void closeBottomBar() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _bottomBarNotifier.value = false;
      _logger.fine('Closed');
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
            builder: (BuildContext context, bool value, _) => bottomBarBuilder(value),
          ),
        ],
      ),
    );
  }
}
