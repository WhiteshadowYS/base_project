import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:base_project/common/logic/device_info/device_platform.dart';

import 'i_status_bar.dart';

class StatusBar implements IStatusBar {
  final DevicePlatform devicePlatform;

  Logger get _logger => Logger('$runtimeType');

  StatusBar({
    required this.devicePlatform,
  });

  @override
  void setColor(Color color) {
    if (devicePlatform != DevicePlatform.Phone) return;

    try {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color),
      );
    } catch (e) {
      _logger.warning('<setColor> => $e');
    }
  }

  @override
  void setBrightness(Brightness brightness) {
    if (devicePlatform != DevicePlatform.Phone) return;

    try {
      if (Platform.isIOS) {
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarBrightness: brightness == Brightness.light ? Brightness.dark : Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
        );
      }

      if (Platform.isAndroid) {
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarBrightness: brightness,
            statusBarIconBrightness: brightness,
          ),
        );
      }
    } catch (e) {
      _logger.warning('<setBrightness> => $e');
    }
  }

  @override
  void setBrightnessFromScreen() {}
}
