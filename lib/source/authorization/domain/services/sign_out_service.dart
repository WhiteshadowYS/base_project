import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';

abstract class SignOutService {
  Future<void> signOut(SignOutContract contract);
}
