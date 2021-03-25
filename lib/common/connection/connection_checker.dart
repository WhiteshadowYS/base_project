import 'package:lalee_mobile/common/connection/i_connection_checker.dart';
import 'package:logging/logging.dart';
import 'package:cross_connectivity/cross_connectivity.dart';

class ConnectionChecker implements IConnectionChecker {
  Logger get _logger => Logger('$runtimeType');

  @override
  Future<bool> hasConnection() async {
    _logger.info('Connection status: ${await Connectivity().checkConnection()}');
    return await Connectivity().checkConnection();
  }
}
