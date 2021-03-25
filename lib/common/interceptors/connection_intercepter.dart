import 'package:base_project/common/connection/connection_checker.dart';
import 'package:base_project/common/connection/i_connection_checker.dart';
import 'package:dio/dio.dart';

class ConnectionIntercepter extends Interceptor {
  final IConnectionChecker connectionChecker;

  ConnectionIntercepter(this.connectionChecker);

  late final void Function()? showConnectionError;

  void init({required void Function()? showConnectionError}) {
    this.showConnectionError = showConnectionError;
  }

  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    final bool hasConnection = await connectionChecker.hasConnection();

    if (hasConnection) {
      return super.onRequest(options);
    }

    if (showConnectionError != null) {
      showConnectionError!();
    }

    return super.onRequest(options);
  }
}
