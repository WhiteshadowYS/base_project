import 'package:base_project_template/common/device_info/i_device_info_loader.dart';
import 'package:base_project_template/common/screen/i_screen_manager.dart';
import 'package:base_project_template/config/injection_config.dart';
import 'package:base_project_template/utils/res/app_data.dart';
import 'package:flutter/material.dart';
import 'package:base_project_template/presentation/layouts/main_layout/main_layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      final _deviceInfo = dependencyContainer!.get<IDeviceInfoLoader>();

      _deviceInfo.checkForTablet(context, AppData.designSizes.minimalMediumWidth);
    });

    return MainLayout(
      key: Key('[SplashScreen][MainLayout]'),
      child: Center(
        child: Text('SplashScreen'),
      ),
    );
  }
}
