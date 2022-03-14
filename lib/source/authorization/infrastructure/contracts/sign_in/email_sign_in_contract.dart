import 'package:base_project/source/authorization/infrastructure/api/sign_in_api.dart';
import 'package:base_project/utils/data_print.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class EmailSignInContract implements SignInContract {
  final SignInApi _signInApi;

  EmailSignInContract(this._signInApi);

  EmailSignInDto? _data;

  set data(EmailSignInDto data) => _data = data;

  @override
  Future<User> execute() async {
    if (_data == null) {
      throw 'Please set the "EmailSignInDto" in the EmailSignInContract';
    }

    dataPrint('EmailSignInContract data: $_data', this);
    dataPrint('EmailSignInContract Success!', this);

    return User.mock();
  }
}
