import 'package:base_project/common/network/error/api_error.dart';
import 'package:base_project/source/auth/data/remote/remote_auth_data_source.dart';
import 'package:base_project/source/auth/data/requests/login_request.dart';
import 'package:base_project/source/auth/data/responses/login_response.dart';
import 'package:base_project/utils/base_elements/base_response.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthContract {
  final RemoteAuthDataSource _dataSource;

  const AuthContract(
    this._dataSource,
  );

  Future<BaseResponse<LoginResponse>> login(LoginRequest request) async {
    try {
      final response = await _dataSource.login(request);

      return BaseResponse(response: response);
    } catch (e) {
      return BaseResponse(
          error: ApiError.createApiError(
        code: -1,
        data: e.toString(),
      ));
    }
  }
}
