import 'package:base_project/common/network/error/api_error.dart';
import 'package:base_project/common/network/error/failure.dart';
import 'package:base_project/source/auth/domain/entity/user.dart';
import 'package:base_project/source/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<Failure, User>> signIn() async {
    return Left(ApiError.createApiError(code: 404, data: 'Not Found'));
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    return Left(ApiError.createApiError(code: 404, data: 'Not Found'));
  }

  @override
  Future<Either<Failure, User>> signUp() async {
    return Left(ApiError.createApiError(code: 404, data: 'Not Found'));
  }
}
