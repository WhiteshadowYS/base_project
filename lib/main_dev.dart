import 'package:base_project/application/application.dart';
import 'package:base_project/config/configs/dev_config.dart';
import 'package:flutter/material.dart';

void main() async {
  await DevConfig().init();

  runApp(Application());
  print('test');
}
