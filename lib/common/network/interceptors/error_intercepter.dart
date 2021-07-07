import 'package:base_project/config/configs/app_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

class ErrorInterceptor extends Interceptor {
  final AppConfig appConfig;

  ErrorInterceptor(this.appConfig);

  late final void Function(String)? errorOutput;

  @factoryMethod
  void init({required void Function(String)? errorOutput}) {
    this.errorOutput = errorOutput;
  }

  @override
  Future<dynamic> onError(DioError error, handler) async {
    if (error.response.toString().contains('Invalid token')) {
      return super.onError(error, handler);
    } else {
      errorOutput!(error.response.toString());
    }
    return super.onError(error, handler);
  }
}
