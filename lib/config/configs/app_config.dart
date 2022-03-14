import 'package:base_project/config/config.dart';
import 'package:flutter/material.dart';

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
  }

  @override
  String toString() => '$runtimeType {url:$baseUrl}';
}
