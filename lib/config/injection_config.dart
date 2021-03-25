import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:injectable/injectable.dart';
import 'package:lalee_mobile/config/app_config.dart';
import 'package:lalee_mobile/domain/dictionary/language.dart';
import 'package:lalee_mobile/common/dictionary/i_dictionary.dart';
import 'package:lalee_mobile/config/injection_config.config.dart';

GetIt? dependencyContainer;
IDictionary<Language> dictionary = dependencyContainer!.get<IDictionary<Language>>();

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
