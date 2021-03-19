import 'package:base_project_template/config/injection_config.config.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project_template/config/app_config.dart';

GetIt? dependencyContainer;

@injectableInit
void initDependencies(AppConfig config) {
  dependencyContainer = GetIt.asNewInstance();
  $initGetIt(
    dependencyContainer!,
    environment: config.name,
  );
}

void initLogger(AppConfig config) {
  Logger.root.level = config.enableLogs ? Level.ALL : Level.WARNING;
  Logger.root.onRecord.listen((LogRecord rec) {
    print(':::> ${rec.loggerName} ${rec.level.name}: ${rec.message} '
        '${rec.stackTrace?.toString() ?? ''}');
  });
}
