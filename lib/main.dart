import 'package:base_project/config/configs/config.dart';
import 'package:flutter/material.dart';

import 'application/application.dart';

void main() async {
  final config = Config();
  await config.init();

  runApp(Application());
}
