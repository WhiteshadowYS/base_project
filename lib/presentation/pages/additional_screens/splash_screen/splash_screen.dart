import 'package:flutter/material.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/presentation/widgets/app_logo.dart';
import 'package:base_project/presentation/widgets/background_image.dart';
import 'package:base_project/presentation/layouts/main_layout/main_layout.dart';
import 'package:base_project/common/logic/device_info/i_device_info_loader.dart';
import 'package:base_project/common/presentors/screen/screen_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  IDeviceInfoLoader get _deviceInfo => dependencyContainer!.get<IDeviceInfoLoader>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _deviceInfo.checkForTablet(context, AppData.designSizes.minimalMediumWidth);
    });

    return MainLayout(
      child: BackgroundImage(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: AppLogo(size: 100).scale,
        ),
      ),
    );
  }
}
