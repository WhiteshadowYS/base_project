import 'package:base_project/common/network/error/failure.dart';
import 'package:base_project/source/auth/domain/entity/token.dart';
import 'package:dartz/dartz.dart';

abstract class LocalTokenDataSource {
  Future<Either<Failure, Token>> get();
  Future<Either<Failure, void>> save(Token token);
  Future<Either<Failure, void>> delete(Token token);
}
