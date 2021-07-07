import 'package:flutter/material.dart';
import 'package:base_project/config/application.dart';
import 'package:base_project/config/configs/dev_config.dart';

void main() async {
  await DevConfig().init();

  runApp(Application());
}
