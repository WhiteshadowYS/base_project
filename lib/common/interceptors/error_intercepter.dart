import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

class ErrorInterceptor extends Interceptor {
  late final void Function(String)? errorOutput;

  @factoryMethod
  void init({required void Function(String)? errorOutput}) {
    this.errorOutput = errorOutput;
  }

  @override
  Future<dynamic> onError(DioError error) async {
    errorOutput!(error.message);
    return super.onError(error);
  }
}
