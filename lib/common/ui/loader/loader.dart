import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'i_loader.dart';

class Loader implements ILoader {
  final Widget loader;

  Loader({required this.loader});

  final ValueNotifier<bool> _loaderNotifier = ValueNotifier<bool>(false);

  bool _backgroundMode = false;

  @override
  ValueNotifier<bool> get loaderNotifier => _loaderNotifier;

  @override
  Widget get loaderWidget => _backgroundMode ? SizedBox() : loader;

  @override
  void start({bool backgroundMode = false}) => WidgetsBinding.instance?.addPostFrameCallback((_) {
        _loaderNotifier.value = true;
        _backgroundMode = backgroundMode;
      });

  @override
  void stop() => WidgetsBinding.instance?.addPostFrameCallback((_) {
        _loaderNotifier.value = false;
        _backgroundMode = false;
      });
}
