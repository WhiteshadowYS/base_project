import 'package:base_project/common/network/error/api_error.dart';
import 'package:base_project/common/network/error/failure.dart';
import 'package:base_project/source/auth/domain/entity/user.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/user/local_user_data_source.dart';
import 'package:dartz/dartz.dart';

class LocalUserDataSourceImpl implements LocalUserDataSource {
  @override
  Future<Either<Failure, User>> get() async {
    return Left(ApiError.createApiError(code: 404, data: 'Not Found'));
  }

  @override
  Future<Either<Failure, void>> save(User user) async {
    return Left(ApiError.createApiError(code: 404, data: 'Not Found'));
  }

  @override
  Future<Either<Failure, void>> delete(User user) async {
    return Left(ApiError.createApiError(code: 404, data: 'Not Found'));
  }
}
