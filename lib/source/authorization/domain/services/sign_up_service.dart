import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';

abstract class SignUpService {
  Future<User> signUp(SignUpContract contract);
}
