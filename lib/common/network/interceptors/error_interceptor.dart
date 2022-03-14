import 'package:base_project/common/network/error/api_error.dart';
import 'package:base_project/common/network/interceptors/resources/const.dart';
import 'package:base_project/config/config.dart';
import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  static ErrorInterceptor get instance => getIt<ErrorInterceptor>();

  late final OnApiError? errorOutput;
  late final IsTokenError? isTokenError;
  late final OnTokenError? onTokenError;

  void init({
    required OnApiError? errorOutput,
    IsTokenError? isTokenError,
    OnTokenError? onTokenError,
  }) {
    this.errorOutput = errorOutput;
    this.onTokenError = onTokenError;
    this.isTokenError = isTokenError;
  }

  @override
  Future<dynamic> onError(DioError error, handler) async {
    final _isTokenError = await isTokenError?.call(error) ?? false;

    if (_isTokenError) {
      await onTokenError?.call();
    }

    final _error = ApiError.createApiError(
      code: error.response?.statusCode,
      data: error.response.toString(),
    );

    await errorOutput?.call(_error);

    return super.onError(error, handler);
  }
}
