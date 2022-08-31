import 'package:base_project/common/network/error/failure.dart';
import 'package:base_project/source/auth/domain/entity/token.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/token/local_token_data_source.dart';
import 'package:dartz/dartz.dart';

class LocalTokenDataSourceMock implements LocalTokenDataSource {
  @override
  Future<Either<Failure, Token>> get() async {
    return Right(Token(token: '123'));
  }

  @override
  Future<Either<Failure, void>> save(Token token) async {
    return Right(true);
  }

  @override
  Future<Either<Failure, void>> delete(Token token) async {
    return Right(true);
  }
}
