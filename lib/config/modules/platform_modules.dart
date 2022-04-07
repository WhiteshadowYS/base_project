import 'package:base_project/common/logging/log_output.dart';
import 'package:base_project/common/platform/storage/i_storage.dart';
import 'package:base_project/common/platform/storage/storage.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class PlatformModules {
  @singleton
  @factoryMethod
  AppRouter get router => AppRouter();

  @singleton
  @factoryMethod
  IStorage get storage => Storage()..init();

  @singleton
  @factoryMethod
  Logger get logger {
    return Logger(
      printer: PrettyPrinter(
        lineLength: 100,
        methodCount: 0,
        errorMethodCount: 4,
      ),
      output: ColoredLogOutput(),
    );
  }
}
