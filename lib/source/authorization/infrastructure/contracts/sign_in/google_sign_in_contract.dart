import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';

class GoogleSignInContract implements SignInContract {
  @override
  Future<User> execute() async {
    print('GoogleSignInContract success!');
    return User.mock();
  }
}
