import 'package:base_project/config/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@module
abstract class PlatformModules {
  @singleton
  @factoryMethod
  AppRouter get router => AppRouter();
}
