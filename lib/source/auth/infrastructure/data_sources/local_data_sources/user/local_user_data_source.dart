import 'package:base_project/common/network/error/failure.dart';
import 'package:base_project/source/auth/domain/entity/user.dart';
import 'package:dartz/dartz.dart';

abstract class LocalUserDataSource {
  Future<Either<Failure, User>> get();
  Future<Either<Failure, void>> save(User user);
  Future<Either<Failure, void>> delete(User user);
}
