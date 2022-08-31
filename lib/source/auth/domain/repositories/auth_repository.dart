import 'package:base_project/common/network/error/failure.dart';
import 'package:base_project/source/auth/domain/entity/user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> signIn();
  Future<Either<Failure, User>> signUp();
  Future<Either<Failure, void>> signOut();
}
