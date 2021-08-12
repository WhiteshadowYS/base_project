import 'dart:async';

import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/source/authorization/domain/repositories/user_repository.dart';
import 'package:base_project/source/authorization/domain/services/sign_in_service.dart';
import 'package:base_project/source/authorization/domain/services/sign_out_service.dart';
import 'package:base_project/source/authorization/domain/services/sign_up_service.dart';
import 'package:base_project/source/authorization/domain/services/user_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository, env: ['test', 'dev', 'stage', 'prod'])
class DataUserRepository implements UserRepository {
  final UserService _userService;
  final SignInService _signInService;
  final SignUpService _signUpService;
  final SignOutService _signOutService;

  DataUserRepository(
    this._userService,
    this._signInService,
    this._signUpService,
    this._signOutService,
  );

  User? _user;

  @override
  FutureOr<User> get user async {
    if (_user != null) return _user!;

    _user = await load();

    return _user!;
  }

  @override
  void setUser(User user) => _user = user;

  @override
  Future<User> load() async => _userService.load();

  @override
  Future<void> upload({User? user}) async {
    if (user != null) {
      await _userService.upload(user);
      return;
    }

    if (_user != null) {
      await _userService.upload(_user!);
      return;
    }

    throw 'User cant be uploaded!';
  }

  @override
  Future<User> signIn(SignInContract contract) => _signInService.signIn(contract);

  @override
  Future<User> signUp(SignUpContract contract) => _signUpService.signUp(contract);

  @override
  Future<void> signOut(SignOutContract contract) => _signOutService.signOut(contract);
}
