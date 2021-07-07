import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'device_platform.dart';

abstract class IDeviceInfoLoader {
  Logger get logger => Logger('[$runtimeType]');

  late DevicePlatform platform = DevicePlatform.Unknown;
  late final String platformVersion;
  late final String deviceId;

  IDeviceInfoLoader();

  Future<void> init();
  Future<void> loadDeviceId();
  Future<void> loadDevicePlatform();
  void checkForTablet(BuildContext context, double minimalTabletWidth);
}
