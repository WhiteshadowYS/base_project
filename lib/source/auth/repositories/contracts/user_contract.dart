import 'package:base_project/common/network/error/api_error.dart';
import 'package:base_project/source/auth/data/local/local_user_data_source.dart';
import 'package:base_project/source/auth/entity/user.dart';
import 'package:base_project/utils/base_elements/base_response.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserContract {
  final LocalUserDataSource _dataSource;

  const UserContract(
    this._dataSource,
  );

  Future<BaseResponse<User>> get() async {
    try {
      final response = await _dataSource.get();
      return BaseResponse(response: response);
    } catch (e) {
      return BaseResponse(
        error: ApiError.createApiError(code: -1, data: e.toString()),
      );
    }
  }

  Future<BaseResponse<bool>> save(User user) async {
    try {
      await _dataSource.save(user);
      return BaseResponse(response: true);
    } catch (e) {
      return BaseResponse(
        error: ApiError.createApiError(code: -1, data: e.toString()),
      );
    }
  }

  Future<BaseResponse<bool>> delete() async {
    try {
      await _dataSource.delete();
      return BaseResponse(response: true);
    } catch (e) {
      return BaseResponse(
        error: ApiError.createApiError(code: -1, data: e.toString()),
      );
    }
  }
}
