import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:injectable/injectable.dart';

@injectable
class GoogleSignInContract implements SignInContract {
  @override
  Future<User> execute() async {
    UIManager.logger.i('GoogleSignInContract success!', this);

    return User.mock();
  }
}
