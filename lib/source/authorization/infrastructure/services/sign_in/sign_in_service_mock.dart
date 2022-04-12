import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/sign_in_service.dart';
import 'package:base_project/utils/printers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignInService, env: ['test'])
class SignInServiceMock implements SignInService {
  @override
  Future<User> signIn(_) async {
    infoPrint('SignInServiceMock: SignIn Success', this);
    return User.mock();
  }
}
