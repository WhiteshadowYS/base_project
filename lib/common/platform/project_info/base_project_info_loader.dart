import 'dart:io';

import 'package:flutter/services.dart';
import 'package:device_info_plus/device_info_plus.dart';

import 'i_project_info_loader.dart';

class BaseProjectinfoLoader implements IProjectInfoLoader {
  @override
  late final String projectAppId;

  @override
  late final String projectCode;

  @override
  late final String projectName;

  @override
  late final String projectVersion;

  final DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();

  @override
  void init() async {
    if (Platform.isIOS) {
      await _setIosDeviceinfo();
      return;
    }

    if (Platform.isAndroid) {
      await _setAndroidDeviceinfo();
      return;
    }
  }

  Future<void> _setIosDeviceinfo() async {
    projectVersion = '';
    projectCode = '';
    projectAppId = '';
    projectName = '';
  }

  Future<void> _setAndroidDeviceinfo() async {
    final info = await _deviceInfoPlugin.androidInfo;

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      projectVersion = info.version.release!;
    } on PlatformException {
      projectVersion = 'Failed to get project version.';
    }

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      projectCode = info.version.codename!;
    } on PlatformException {
      projectCode = 'Failed to get build number.';
    }

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      projectAppId = info.brand!;
    } on PlatformException {
      projectAppId = 'Failed to get app ID.';
    }

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      projectName = info.product!;
    } on PlatformException {
      projectName = 'Failed to get app name.';
    }
  }
}
