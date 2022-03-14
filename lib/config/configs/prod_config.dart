import 'package:logging/logging.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/config/configs/app_config.dart';

const prod = Environment('prod');

@prod
@Injectable(as: AppConfig)
class ProdConfig extends AppConfig {
  @override
  bool get useMock => false;

  @override
  String get baseUrl => '';

  @override
  String get name => 'prod';

  @override
  int get pagination => 10;

  @override
  Future<void> initLogger() async {
    Logger.root.level = Level.WARNING;
    Logger.root.onRecord.listen((LogRecord log) {
      print(':::> ${log.loggerName} ${log.level.name}: ${log.message}\n${log.stackTrace?.toString() ?? ''}');
    });
  }
}
