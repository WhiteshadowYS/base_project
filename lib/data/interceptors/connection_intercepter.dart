import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:base_project_template/data/managers/connection_manager.dart/connection_manager.dart';

@named
@Singleton(as: Interceptor)
class ConnectionIntercepter extends Interceptor {
  late final void Function()? showConnectionError;

  void init({required void Function()? showConnectionError}) {
    this.showConnectionError = showConnectionError;
  }

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
