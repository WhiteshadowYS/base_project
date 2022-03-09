import 'package:base_project/common/ui/theme/i_theme_config.dart';
import 'package:base_project/config/config.config.dart';
import 'package:base_project/config/configs/app_config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

late final GetIt getIt;

@injectableInit
void initDependencies(AppConfig config) {
  getIt = GetIt.asNewInstance();
  $initGetIt(
    getIt,
    environment: config.name,
  );
}
