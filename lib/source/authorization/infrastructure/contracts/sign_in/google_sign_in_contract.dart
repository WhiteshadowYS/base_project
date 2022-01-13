import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/utils/data_print.dart';
import 'package:injectable/injectable.dart';

@injectable
class GoogleSignInContract implements SignInContract {
  @override
  Future<User> execute() async {
    dataPrint('GoogleSignInContract success!', this);

    return User.mock();
  }
}
