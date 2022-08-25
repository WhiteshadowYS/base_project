import 'package:base_project/common/network/error/api_error.dart';

class BaseResponse<T> {
  T? response;
  ApiError? error;

  BaseResponse({
    this.response,
    this.error,
  });

  bool get isSuccess => error == null && response != null;
}
