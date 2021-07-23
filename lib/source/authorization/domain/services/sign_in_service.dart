import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/entities/user.dart';

abstract class SignInService {
  Future<User> signIn(SignInContract contract);
}
