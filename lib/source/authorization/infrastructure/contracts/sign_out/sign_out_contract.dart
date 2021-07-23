import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';

class DefaultSignOutContract implements SignOutContract {
  @override
  Future<void> execute() async {
    print('DefaultSignOutContract: Success!');
  }
}
