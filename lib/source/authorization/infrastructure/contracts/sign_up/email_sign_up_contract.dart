import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:base_project/utils/data_print.dart';

class EmailSignUpContract implements SignUpContract {
  final EmailSignInDto _data;

  const EmailSignUpContract(EmailSignInDto data) : _data = data;

  @override
  Future<User> execute() async {
    dataPrint('EmailSignUpContract data: $_data', this);
    dataPrint('EmailSignUpContract Success!', this);
    return User.mock();
  }
}
