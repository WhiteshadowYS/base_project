import 'package:logging/logging.dart';
import 'package:cross_connectivity/cross_connectivity.dart';

class ConnectionManager {
  static const tag = '[ConnectionManager]';

  ConnectionManager._privateConstructor();

  static final ConnectionManager _instance = ConnectionManager._privateConstructor();

  static ConnectionManager get instance => _instance;

  Logger get logger => Logger('${_instance.runtimeType}');

  Future<bool> hasConnection() async {
    logger.info('connection result: ${await Connectivity().checkConnection()}');
    return await Connectivity().checkConnection();
  }
}
