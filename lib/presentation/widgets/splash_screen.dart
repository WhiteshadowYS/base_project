import 'package:base_project_template/data/managers/device_info_manager/device_info_manager.dart';
import 'package:flutter/material.dart';
import 'package:base_project_template/presentation/layouts/main_layout/main_layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      DeviceInfoManager.instance.checkForTablet(context);
    });

    return MainLayout(
      key: Key('[SplashScreen][MainLayout]'),
      child: Center(
        child: Text('SplashScreen'),
      ),
    );
  }
}
