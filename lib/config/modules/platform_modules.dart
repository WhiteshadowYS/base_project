import 'package:base_project/common/platform/storage/i_storage.dart';
import 'package:base_project/common/platform/storage/storage.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@module
abstract class PlatformModules {
  @singleton
  @factoryMethod
  AppRouter get router => AppRouter();

  @singleton
  @factoryMethod
  IStorage get storage => Storage()..init();
}
