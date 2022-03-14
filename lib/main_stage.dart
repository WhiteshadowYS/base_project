import 'package:base_project/application/application.dart';
import 'package:base_project/config/configs/stage_config.dart';
import 'package:flutter/material.dart';

void main() async {
  await StageConfig().init();

  runApp(Application());
}
