import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:base_project_template/data/managers/connection_manager.dart/connection_manager.dart';

class ConnectionIntercepter extends Interceptor {
  ConnectionIntercepter._privateConstructor();

  static final ConnectionIntercepter _instance = ConnectionIntercepter._privateConstructor();

  static ConnectionIntercepter get instance => _instance;

  Logger get logger => Logger('${_instance.runtimeType}');

  void init({void Function()? showConnectionError}) {
    if (showConnectionError != null) {
      this.showConnectionError = showConnectionError;
    }
  }

  void Function()? showConnectionError;

  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    final bool hasConnection = await ConnectionManager.instance.hasConnection();

    if (hasConnection) {
      return super.onRequest(options);
    }

    if (showConnectionError != null) {
      showConnectionError!();
    }

    return super.onRequest(options);
  }
}
