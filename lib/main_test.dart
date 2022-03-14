import 'package:base_project/application/application.dart';
import 'package:flutter/material.dart';
import 'package:base_project/config/configs/test_config.dart';

void main() async {
  await TestConfig().init();

  runApp(Application());
}
