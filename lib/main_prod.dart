import 'package:base_project_template/utils/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:base_project_template/config/app_config.dart';
import 'package:base_project_template/dependency/init_system.dart';
import 'package:base_project_template/application/application.dart';
import 'package:base_project_template/dependency/injection_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = AppBlocObserver();

  initLogger(ProdConfig());
  await initSystem();
  initDependencies(ProdConfig());

  runApp(Application());
}
