import 'package:flutter/material.dart';
import 'package:base_project/config/configs/test_config.dart';
import 'package:base_project/config/application/application.dart';

void main() async {
  await TestConfig().init();

  runApp(Application());
}
