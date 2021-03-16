import 'package:base_project_template/data/network/interceptors/connection_intercepter.dart';
import 'package:base_project_template/data/network/interceptors/error_intercepter.dart';
import 'package:base_project_template/domain/managers/device_info_manager/device_info_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> initSystem() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DeviceInfoManager.instance.init();

  ErrorInterceptor.instance.init(
    errorOutput: (String error) => print('Error Interceptor error: $error'),
  );

  ConnectionIntercepter.instance.init(
    showConnectionError: () => print('No Connection Error'),
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
