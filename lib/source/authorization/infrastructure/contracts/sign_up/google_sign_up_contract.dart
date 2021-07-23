import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';

class GoogleSignUpContract implements SignUpContract {
  @override
  Future<User> execute() async {
    print('GoogleSignUpContract Success!');
    return User.mock();
  }
}
