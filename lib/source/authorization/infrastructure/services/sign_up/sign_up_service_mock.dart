import 'package:base_project/utils/data_print.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/sign_up_service.dart';

@LazySingleton(as: SignUpService, env: ['test'])
class SignUpServiceMock implements SignUpService {
  @override
  Future<User> signUp(_) async {
    dataPrint('SignUpServiceMock: SignUp Success!', this);
    return User.mock();
  }
}
