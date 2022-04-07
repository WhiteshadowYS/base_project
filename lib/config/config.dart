import 'package:base_project/config/config.config.dart';
import 'package:base_project/config/configs/app_config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

late final GetIt getIt;

@injectableInit
void initDependencies(AppConfig config) {
  getIt = GetIt.asNewInstance();

  final gh = GetItHelper(getIt, config.name);
  gh.singleton<AppConfig>(config);

  $initGetIt(
    getIt,
    environment: config.name,
  );
}
