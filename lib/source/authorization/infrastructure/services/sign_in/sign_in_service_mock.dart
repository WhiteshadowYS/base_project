import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/source/authorization/domain/services/sign_in_service.dart';
import 'package:base_project/utils/data_print.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignInService, env: ['test'])
class SignInServiceMock implements SignInService {
  @override
  Future<User> signIn(_) async {
    dataPrint('SignInServiceMock: SignIn Success', this);
    return User.mock();
  }
}
