// export 'screen_connector.dart';
// export 'typed_screen_builder.dart';

// import 'package:base_project/config/config.dart';
// import 'package:flutter/material.dart';
// import 'package:base_project/utils/res/app_data.dart';
// import 'package:base_project/common/logic/device_info/device_platform.dart';
// import 'package:base_project/common/logic/device_info/i_device_info_loader.dart';

// import 'i_screen_manager.dart';
// import 'screen_connector.dart';
// import 'typed_screen_builder.dart';

// class ScreenManager implements IScreenManager {
//   IDeviceInfoLoader deviceInfoLoader;
//   ScreenManager(this.deviceInfoLoader);

//   static const double _smallScreenScale = 1.0;
//   static const double _mediumScreenScale = 1.4;
//   static const double _largeScreenScale = 1.8;

//   final ValueNotifier<double> _scale = ValueNotifier<double>(_smallScreenScale);
//   final ValueNotifier<DevicePlatform> _devicePlatform = ValueNotifier<DevicePlatform>(DevicePlatform.Unknown);

//   bool _isDevicePlatformChecked = false;

//   @override
//   double get scale => _scale.value;

//   @override
//   ValueNotifier<DevicePlatform> get platformNotifier => _devicePlatform;

//   @override
//   ValueNotifier<double> get scaleNotifier => _scale;

//   @override
//   void updateScreen(BuildContext context) {
//     _tabletCheck(context);

//     final Size size = MediaQuery.of(context).size;
//     final DevicePlatform platform = deviceInfoLoader.platform;

//     _updateScreenScale(size);

//     if (platform == DevicePlatform.Web) {
//       if (size.width < AppData.designSizes.minimalMediumWidth && _devicePlatform.value != DevicePlatform.Phone) {
//         _devicePlatform.value = DevicePlatform.Phone;
//         return;
//       }

//       if (size.width >= AppData.designSizes.minimalMediumWidth && _devicePlatform.value != DevicePlatform.Web) {
//         _devicePlatform.value = DevicePlatform.Web;
//         return;
//       }
//       return;
//     }

//     if (platform != _devicePlatform.value) {
//       _devicePlatform.value = platform;
//     }
//   }

//   void _updateScreenScale(Size screenSize) {
//     if (screenSize.width > AppData.designSizes.minimalLargeWidth) {
//       _scale.value = _largeScreenScale;
//       return;
//     }

//     if (screenSize.width > AppData.designSizes.minimalMediumWidth) {
//       _scale.value = _mediumScreenScale;
//       return;
//     }

//     _scale.value = _smallScreenScale;
//   }

//   void _tabletCheck(BuildContext context) {
//     if (!_isDevicePlatformChecked) {
//       deviceInfoLoader.checkForTablet(context, AppData.designSizes.minimalMediumWidth);
//       _isDevicePlatformChecked = true;
//     }
//   }

//   @override
//   Widget screenConnector({
//     required Widget Function(BuildContext, Widget) builder,
//     Widget? child,
//   }) {
//     return ScreenConnector(screenManager: this, builder: builder, child: child);
//   }

//   @override
//   Widget typedScreenBuilder({
//     required Widget Function(BuildContext, Widget)? phoneBuilder,
//     Widget Function(BuildContext, Widget)? tabletBuilder,
//     Widget Function(BuildContext, Widget)? webBuilder,
//     Widget? child,
//   }) {
//     return TypedScreenBuilder(
//       screenManager: this,
//       phoneBuilder: phoneBuilder,
//       tabletBuilder: tabletBuilder,
//       webBuilder: webBuilder,
//       child: child,
//     );
//   }
// }

// extension ScaleExstantion on Widget {
//   Widget get scale {
//     return ValueListenableBuilder(
//       valueListenable: getIt<IScreenManager>().scaleNotifier,
//       builder: (BuildContext context, double scale, _) {
//         return Transform.scale(
//           scale: scale,
//           child: this,
//         );
//       },
//     );
//   }
// }
