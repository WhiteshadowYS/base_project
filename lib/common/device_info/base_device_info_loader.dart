import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/src/logger.dart';
import 'package:lalee_mobile/common/device_info/i_device_info_loader.dart';
import 'package:websafe_platform/websafe_platform.dart';

import 'device_platform.dart' as pl;

class BaseDeviceinfoLoader implements IDeviceInfoLoader {
  BaseDeviceinfoLoader() {
    init();
  }

  @override
  late final String deviceId;

  @override
  late final String platformVersion;

  @override
  late pl.DevicePlatform platform;

  final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();
  final WebsafePlatform _websafePlatform = WebsafePlatform();

  @override
  Logger get logger => Logger('[$runtimeType]');

  @override
  Future<void> init() async {
    await loadDevicePlatform();
    await loadDeviceId();
  }

  @override
  void checkForTablet(BuildContext context, double minimalTabletWidth) {
    if (platform != pl.DevicePlatform.Phone) return;

    final mediaQuery = MediaQuery.of(context);

    try {
      if (mediaQuery.size.shortestSide < minimalTabletWidth) {
        platform = pl.DevicePlatform.Phone;
      } else {
        platform = pl.DevicePlatform.Tablet;
      }
    } catch (e) {
      logger.warning('<checkForTablet> => Catch error: $e');
      platform = pl.DevicePlatform.Tablet;
    }
  }

  @override
  Future<void> loadDeviceId() async {
    if (platform != pl.DevicePlatform.Phone && platform != pl.DevicePlatform.Tablet) return;

    try {
      if (Platform.isAndroid) {
        final AndroidDeviceInfo build = await _deviceInfoPlugin.androidInfo;
        deviceId = build.androidId ?? '';
      } else if (Platform.isIOS) {
        final IosDeviceInfo data = await _deviceInfoPlugin.iosInfo;
        deviceId = data.identifierForVendor ?? '';
      }
    } catch (e) {
      deviceId = 'Failed to get device id.';
    }
  }

  @override
  Future<void> loadDevicePlatform() async {
    if (_websafePlatform.isIOS() || _websafePlatform.isAndroid()) {
      logger.info('<getDevicePlatform> => paltform: Phone or Tablet');
      platform = pl.DevicePlatform.Phone;
    } else if (_websafePlatform.isLinux() || _websafePlatform.isWindows() || _websafePlatform.isMacOS()) {
      logger.info('<getDevicePlatform> => paltform: PC');
      platform = pl.DevicePlatform.PC;
    } else if (_websafePlatform.isWeb()) {
      logger.info('<getDevicePlatform> => paltform: Web');
      platform = pl.DevicePlatform.Web;
    } else {
      logger.info('<getDevicePlatform> => paltform: Unknown');
    }
  }
}
