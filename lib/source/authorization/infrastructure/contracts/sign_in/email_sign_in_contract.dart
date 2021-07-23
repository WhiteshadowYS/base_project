import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';

class EmailSignInContract implements SignInContract {
  final EmailSignInDto _data;

  const EmailSignInContract(EmailSignInDto data) : _data = data;

  @override
  Future<User> execute() async {
    print('EmailSignInContract data: $_data');
    print('EmailSignInContract Success!');
    return User.mock();
  }
}
