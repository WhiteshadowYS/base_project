import 'package:base_project/common/network/error/api_error.dart';
import 'package:base_project/source/auth/data/local/local_token_data_source.dart';
import 'package:base_project/source/auth/entity/token.dart';
import 'package:base_project/utils/base_elements/base_response.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TokenContract {
  final LocalTokenDataSource _dataSource;

  const TokenContract(
    this._dataSource,
  );

  Future<BaseResponse<Token>> get() async {
    try {
      final response = await _dataSource.get();
      return BaseResponse(response: response);
    } catch (e) {
      return BaseResponse(
        error: ApiError.createApiError(code: -1, data: e.toString()),
      );
    }
  }

  Future<BaseResponse<bool>> save(Token token) async {
    try {
      await _dataSource.save(token);
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
