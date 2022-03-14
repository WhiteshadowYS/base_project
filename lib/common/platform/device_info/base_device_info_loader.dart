import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/src/logger.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:universal_platform/universal_platform.dart';

import 'device_platform.dart' as pl;
import 'i_device_info_loader.dart';

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
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
      } else {
        platform = pl.DevicePlatform.Tablet;
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
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
    if (UniversalPlatform.isIOS || UniversalPlatform.isAndroid) {
      logger.info('<getDevicePlatform> => paltform: Phone or Tablet');
      platform = pl.DevicePlatform.Phone;
    } else if (UniversalPlatform.isLinux || UniversalPlatform.isWindows || UniversalPlatform.isMacOS) {
      logger.info('<getDevicePlatform> => paltform: PC');
      platform = pl.DevicePlatform.PC;
    } else if (UniversalPlatform.isWeb) {
      logger.info('<getDevicePlatform> => paltform: Web');
      platform = pl.DevicePlatform.Web;
    } else {
      logger.info('<getDevicePlatform> => paltform: Unknown');
    }
  }
}
