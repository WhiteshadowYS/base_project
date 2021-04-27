import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_project/config/app_config.dart';
import 'package:base_project/config/init_system.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/utils/app_bloc_observer.dart';
import 'package:base_project/config/application.dart';

void main() async {
  Bloc.observer = AppBlocObserver();

  initDependencies(ProdConfig());
  initLogger(ProdConfig());
  await initSystem();

  runApp(Application());
}
