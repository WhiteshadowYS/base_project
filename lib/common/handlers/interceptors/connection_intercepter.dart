import 'package:dio/dio.dart';
import 'package:base_project/common/logic/connection/i_connection_checker.dart';

class ConnectionIntercepter extends Interceptor {
  final IConnectionChecker connectionChecker;

  ConnectionIntercepter(this.connectionChecker);

  late final void Function()? showConnectionError;

  void init({required void Function()? showConnectionError}) {
    this.showConnectionError = showConnectionError;
  }

  @override
  Future<dynamic> onRequest(RequestOptions options, handler) async {
    final bool hasConnection = await connectionChecker.hasConnection();

    if (hasConnection) {
      return super.onRequest(options, handler);
    }

    if (showConnectionError != null) {
      showConnectionError!();
    }

    return super.onRequest(options, handler);
  }
}
