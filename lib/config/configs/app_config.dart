import 'package:flutter/material.dart';
import 'package:base_project/config/config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_project/utils/app_bloc_observer.dart';

abstract class AppConfig {
  const AppConfig();

  String get name;
  String get baseUrl;
  bool get useMock;
  int get pagination;

  Future<void> init() async {
    initDependencies(this);
    await initLogger();
    await initSystem();
  }

  Future<void> initLogger();

  Future<void> initSystem() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = AppBlocObserver();
  }

  @override
  String toString() => '$runtimeType {url:$baseUrl}';
}
