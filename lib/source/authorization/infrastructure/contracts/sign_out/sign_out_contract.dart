import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:injectable/injectable.dart';

@injectable
class DefaultSignOutContract implements SignOutContract {
  @override
  Future<void> execute() async {
    UIManager.logger.i('DefaultSignOutContract: Success!', this);
  }
}
