import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lalee_mobile/config/app_config.dart';
import 'package:lalee_mobile/config/init_system.dart';
import 'package:lalee_mobile/config/injection_config.dart';
import 'package:lalee_mobile/utils/app_bloc_observer.dart';
import 'package:lalee_mobile/domain/blocs/application/application.dart';

void main() async {
  Bloc.observer = AppBlocObserver();

  initDependencies(DevConfig());
  initLogger(DevConfig());
  await initSystem();

  runApp(Application());
}
