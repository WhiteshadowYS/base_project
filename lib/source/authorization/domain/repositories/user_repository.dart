import 'dart:async';

import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:base_project/source/authorization/domain/entities/user.dart';

abstract class UserRepository {
  FutureOr<User> get user;
  void setUser(User user);

  Future<User> signIn(SignInContract contract);
  Future<User> signUp(SignUpContract contract);
  Future<void> signOut(SignOutContract contract);

  Future<User> load();
  Future<void> upload({User user});
}
