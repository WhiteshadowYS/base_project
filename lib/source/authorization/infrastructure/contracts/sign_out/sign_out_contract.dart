import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/utils/printers.dart';
import 'package:injectable/injectable.dart';

@injectable
class DefaultSignOutContract implements SignOutContract {
  @override
  Future<void> execute() async {
    infoPrint('DefaultSignOutContract: Success!', this);
  }
}
