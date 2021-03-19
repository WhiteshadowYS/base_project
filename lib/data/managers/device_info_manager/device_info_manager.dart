import 'dart:io';

import 'package:base_project_template/domain/res/app_data.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flutter/services.dart';
import 'package:device_info/device_info.dart';
// import 'package:get_version/get_version.dart';
import 'package:websafe_platform/websafe_platform.dart';

enum DevicePlatform { Web, Phone, Tablet, PC, Unknown }

/// [DeviceInfoService] it is service for getting device data.
/// This class it - Singleton, for function using use [DeviceInfoService.instance]
/// [getDeviceId] - function for getting UUID for Android or iOS device
class DeviceInfoManager {
  static const tag = '[DeviceInfoService]';

  DeviceInfoManager._privateConstructor();

  static final DeviceInfoManager _instance = DeviceInfoManager._privateConstructor();

  static DeviceInfoManager get instance => _instance;

  Logger get logger => Logger('${_instance.runtimeType}');

  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  String? _platformVersion;
  String? _projectVersion;
  String? _projectCode;
  String? _projectAppId;
  String? _projectName;
  String? _deviceId;
  DevicePlatform? _devicePlatform;

  String get deviceId => _deviceId ?? '';
  String get projectName => _projectName ?? '';
  String get projectCode => _projectCode ?? '';
  String get projectVersion => _projectVersion ?? '';
  String get projectAppId => _projectAppId ?? '';
  String get platformVersion => _platformVersion ?? '';
  DevicePlatform get devicePlatform => _devicePlatform ?? DevicePlatform.Unknown;

  Future<void> init() async {
    await _getDevicePlatform();

    if (_devicePlatform == DevicePlatform.Web) return;

    // Platform messages may fail, so we use a try/catch PlatformException.
    // try {
    //   _platformVersion = await GetVersion.platformVersion;
    // } on PlatformException {
    //   _platformVersion = 'Failed to get platform version.';
    // }

    // Platform messages may fail, so we use a try/catch PlatformException.
    // try {
    //   _projectVersion = await GetVersion.projectVersion;
    // } on PlatformException {
    //   _projectVersion = 'Failed to get project version.';
    // }

    // Platform messages may fail, so we use a try/catch PlatformException.
    // try {
    //   _projectCode = await GetVersion.projectCode;
    // } on PlatformException {
    //   _projectCode = 'Failed to get build number.';
    // }

    // Platform messages may fail, so we use a try/catch PlatformException.
    // try {
    //   _projectAppId = await GetVersion.appID;
    // } on PlatformException {
    //   _projectAppId = 'Failed to get app ID.';
    // }

    // Platform messages may fail, so we use a try/catch PlatformException.
    // try {
    //   _projectName = await GetVersion.appName;
    // } on PlatformException {
    //   _projectName = 'Failed to get app name.';
    // }

    await _getDeviceId();

    logger.info('Device id: $deviceId');
    logger.info('Project Name: $projectName');
    logger.info('Project code: $projectCode');
    logger.info('Project version: $projectVersion');
    logger.info('Project app id: $projectAppId');
    logger.info('Platform version: $platformVersion');
  }

  Future<void> checkForTablet(BuildContext context) async {
    if (_devicePlatform != DevicePlatform.Phone) return;

    final mediaQuery = MediaQuery.of(context);

    try {
      if (mediaQuery.size.shortestSide < AppData.designSizes.minimalMediumWidth) {
        _devicePlatform = DevicePlatform.Phone;
      } else {
        _devicePlatform = DevicePlatform.Tablet;
      }
    } catch (e) {
      logger.warning('<checkForTablet> => Catch error: $e');
      _devicePlatform = DevicePlatform.Tablet;
    }
  }

  Future<void> _getDevicePlatform() async {
    final websafePlatform = WebsafePlatform();

    if (websafePlatform.isIOS() || websafePlatform.isAndroid()) {
      logger.info('<getDevicePlatform> => paltform: Phone or Tablet');
      _devicePlatform = DevicePlatform.Phone;
    } else if (websafePlatform.isLinux() || websafePlatform.isWindows() || websafePlatform.isMacOS()) {
      logger.info('<getDevicePlatform> => paltform: PC');
      _devicePlatform = DevicePlatform.PC;
    } else if (websafePlatform.isWeb()) {
      logger.info('<getDevicePlatform> => paltform: Web');
      _devicePlatform = DevicePlatform.Web;
    } else {
      logger.info('<getDevicePlatform> => paltform: Unknown');
    }
  }

  Future<void> _getDeviceId() async {
    try {
      if (Platform.isAndroid) {
        final AndroidDeviceInfo build = await deviceInfoPlugin.androidInfo;
        _deviceId = build.androidId;
      } else if (Platform.isIOS) {
        final IosDeviceInfo data = await deviceInfoPlugin.iosInfo;
        _deviceId = data.identifierForVendor;
      }
    } on PlatformException {
      _deviceId = 'Failed to get device id.';
    }
  }
}
