import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/common/presentors/status_bar/i_status_bar.dart';

@injectable
Future<void> initSystem() async {
  WidgetsFlutterBinding.ensureInitialized();
  dependencyContainer!.get<IStatusBar>();
}
