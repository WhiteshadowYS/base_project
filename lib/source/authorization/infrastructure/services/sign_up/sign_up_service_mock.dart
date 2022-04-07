import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/sign_up_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignUpService, env: ['test'])
class SignUpServiceMock implements SignUpService {
  @override
  Future<User> signUp(_) async {
    UIManager.logger.i('SignUpServiceMock: SignUp Success!', this);
    return User.mock();
  }
}
