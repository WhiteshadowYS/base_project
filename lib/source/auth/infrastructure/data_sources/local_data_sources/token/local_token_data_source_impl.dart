import 'package:base_project/common/network/error/api_error.dart';
import 'package:base_project/common/network/error/failure.dart';
import 'package:base_project/source/auth/domain/entity/token.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/token/local_token_data_source.dart';
import 'package:dartz/dartz.dart';

class LocalTokenDataSourceImpl implements LocalTokenDataSource {
  @override
  Future<Either<Failure, Token>> get() async {
    return Left(ApiError.createApiError(code: 404, data: 'Not Found'));
  }

  @override
  Future<Either<Failure, void>> save(Token token) async {
    return Left(ApiError.createApiError(code: 404, data: 'Not Found'));
  }

  @override
  Future<Either<Failure, void>> delete(Token token) async {
    return Left(ApiError.createApiError(code: 404, data: 'Not Found'));
  }
}
