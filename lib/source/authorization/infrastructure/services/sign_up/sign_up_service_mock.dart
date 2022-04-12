import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/sign_up_service.dart';
import 'package:base_project/utils/printers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignUpService, env: ['test'])
class SignUpServiceMock implements SignUpService {
  @override
  Future<User> signUp(_) async {
    infoPrint('SignUpServiceMock: SignUp Success!', this);
    return User.mock();
  }
}
