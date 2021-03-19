import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_project_template/config/app_config.dart';
import 'package:base_project_template/config/init_system.dart';
import 'package:base_project_template/config/injection_config.dart';
import 'package:base_project_template/utils/app_bloc_observer.dart';
import 'package:base_project_template/domain/blocs/application/application.dart';

void main() async {
  Bloc.observer = AppBlocObserver();

  initLogger(ProdConfig());
  await initSystem();
  initDependencies(ProdConfig());

  runApp(Application());
}
