import 'package:logging/logging.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/config/configs/app_config.dart';

const test = Environment('test');

@test
@Injectable(as: AppConfig)
class TestConfig extends AppConfig {
  @override
  bool get useMock => true;

  @override
  String get baseUrl => '';

  @override
  String get name => 'test';

  @override
  int get pagination => 10;

  @override
  Future<void> initLogger() async {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord log) {
      print(':::> ${log.loggerName} ${log.level.name}: ${log.message}\n${log.stackTrace?.toString() ?? ''}');
    });
  }
}
