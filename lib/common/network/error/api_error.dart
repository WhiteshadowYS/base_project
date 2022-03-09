import 'package:base_project/common/network/error/error.dart';
import 'package:base_project/common/network/error/error_service.dart';

class ApiError extends Error {
  final int code;

  ApiError({
    required this.code,
    required String data,
    required String readebleError,
  }) : super(data: data, readebleError: readebleError);

  factory ApiError.createApiError({
    required int? code,
    required String data,
  }) {
    return ErrorService.createApiError(code, data);
  }
}
