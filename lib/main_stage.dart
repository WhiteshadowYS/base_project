import 'package:flutter/material.dart';
import 'package:base_project/config/application.dart';
import 'package:base_project/config/configs/stage_config.dart';

void main() async {
  await StageConfig().init();

  runApp(Application());
}
