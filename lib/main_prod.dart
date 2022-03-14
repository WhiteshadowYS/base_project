import 'package:base_project/application/application.dart';
import 'package:base_project/config/configs/prod_config.dart';
import 'package:flutter/material.dart';

void main() async {
  await ProdConfig().init();

  runApp(Application());
}
