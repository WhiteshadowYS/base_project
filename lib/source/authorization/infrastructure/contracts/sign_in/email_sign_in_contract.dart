import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:base_project/utils/data_print.dart';

class EmailSignInContract implements SignInContract {
  final EmailSignInDto _data;

  const EmailSignInContract(EmailSignInDto data) : _data = data;

  @override
  Future<User> execute() async {
    dataPrint('EmailSignInContract data: $_data', this);
    dataPrint('EmailSignInContract Success!', this);
    return User.mock();
  }
}
