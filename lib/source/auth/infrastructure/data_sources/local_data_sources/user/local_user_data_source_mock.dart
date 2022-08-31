import 'package:base_project/common/network/error/failure.dart';
import 'package:base_project/source/auth/domain/entity/user.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/user/local_user_data_source.dart';
import 'package:dartz/dartz.dart';

class LocalUserDataSourceMock implements LocalUserDataSource {
  @override
  Future<Either<Failure, User>> get() async {
    return Right(
      User(
        id: 0,
        age: 23,
        email: 'test@gmail.com',
        name: 'Yura Shevelev',
        company: 'Light-IT',
      ),
    );
  }

  @override
  Future<Either<Failure, void>> save(User user) async {
    return Right(true);
  }

  @override
  Future<Either<Failure, void>> delete(User user) async {
    return Right(true);
  }
}
