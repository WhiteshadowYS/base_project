import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/utils/data_print.dart';

class DefaultSignOutContract implements SignOutContract {
  @override
  Future<void> execute() async {
    dataPrint('DefaultSignOutContract: Success!', this);
  }
}
