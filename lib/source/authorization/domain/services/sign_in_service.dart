import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';

abstract class SignInService {
  Future<User> signIn(SignInContract contract);
}
