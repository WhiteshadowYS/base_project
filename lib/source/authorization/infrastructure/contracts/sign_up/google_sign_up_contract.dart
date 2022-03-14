import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:injectable/injectable.dart';

@injectable
class GoogleSignUpContract implements SignUpContract {
  @override
  Future<User> execute() async {
    print('GoogleSignUpContract Success!');
    return User.mock();
  }
}
