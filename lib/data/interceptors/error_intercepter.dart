import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor._privateConstructor();

  static final ErrorInterceptor _instance = ErrorInterceptor._privateConstructor();

  static ErrorInterceptor get instance => _instance;

  Logger get logger => Logger('${_instance.runtimeType}');

  void Function(String)? errorOutput;

  void init({void Function(String)? errorOutput}) {
    if (errorOutput != null) {
      this.errorOutput = errorOutput;
    }
  }

  @override
  Future<dynamic> onError(DioError error) async {
    errorOutput!(error.message);
    return super.onError(error);
  }
}
