import 'package:base_project_template/data/managers/device_info_manager/device_info_manager.dart';
import 'package:base_project_template/domain/res/app_data.dart';
import 'package:flutter/material.dart';
export './screen_manager_builder.dart';
export './screen_manager_connector.dart';

class ScreenManager {
  static const double _smallScreenScale = 1.0;
  static const double _mediumScreenScale = 1.2;
  static const double _largeScreenScale = 1.5;

  ScreenManager._privateConstructor();

  static final ScreenManager _instance = ScreenManager._privateConstructor();

  static ScreenManager get instance => _instance;

  final ValueNotifier<double> _scale = ValueNotifier<double>(_smallScreenScale);
  final ValueNotifier<DevicePlatform> _devicePlatform = ValueNotifier<DevicePlatform>(DevicePlatform.Unknown);

  bool _isDevicePlatformChecked = false;

  double get scale => _scale.value;

  ValueNotifier<DevicePlatform> get platformNotifier => _devicePlatform;
  ValueNotifier<double> get scaleNotifier => _scale;

  void updateScreen(BuildContext context) {
    _tabletCheck(context);

    final Size size = MediaQuery.of(context).size;
    final DevicePlatform platform = DeviceInfoManager.instance.devicePlatform;

    _updateScreenScale(size);

    if (platform == DevicePlatform.Web) {
      if (size.shortestSide < AppData.designSizes.minimalMediumWidth && _devicePlatform.value != DevicePlatform.Phone) {
        _devicePlatform.value = DevicePlatform.Phone;
        return;
      }

      if (size.shortestSide >= AppData.designSizes.minimalMediumWidth && _devicePlatform.value != DevicePlatform.Web) {
        _devicePlatform.value = DevicePlatform.Web;
        return;
      }
      return;
    }

    if (platform != _devicePlatform.value) {
      _devicePlatform.value = platform;
    }
  }

  void _updateScreenScale(Size screenSize) {
    if (screenSize.width > AppData.designSizes.minimalLargeWidth) {
      _scale.value = _largeScreenScale;
      return;
    }

    if (screenSize.width > AppData.designSizes.minimalMediumWidth) {
      _scale.value = _mediumScreenScale;
      return;
    }

    _scale.value = _smallScreenScale;
  }

  void _tabletCheck(BuildContext context) {
    if (!_isDevicePlatformChecked) {
      DeviceInfoManager.instance.checkForTablet(context);
      _isDevicePlatformChecked = true;
    }
  }
}

extension ScaleExstantion on Widget {
  Widget get scale {
    return ValueListenableBuilder(
      valueListenable: ScreenManager.instance.scaleNotifier,
      builder: (BuildContext context, double scale, _) {
        return Transform.scale(
          scale: scale,
          child: this,
        );
      },
    );
  }
}
