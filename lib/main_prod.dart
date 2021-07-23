import 'package:base_project/config/configs/prod_config.dart';
import 'package:flutter/material.dart';
import 'package:base_project/config/application/application.dart';

void main() async {
  await ProdConfig().init();

  runApp(Application());
}
