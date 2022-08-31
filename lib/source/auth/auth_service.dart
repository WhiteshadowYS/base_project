import 'package:base_project/source/auth/data/requests/login_request.dart';
import 'package:base_project/source/auth/entity/token.dart';
import 'package:base_project/source/auth/entity/user.dart';
import 'package:base_project/source/auth/repositories/containers/token_container.dart';
import 'package:base_project/source/auth/repositories/containers/user_container.dart';
import 'package:base_project/source/auth/repositories/contracts/auth_contract.dart';
import 'package:base_project/source/auth/repositories/contracts/token_contract.dart';
import 'package:base_project/source/auth/repositories/contracts/user_contract.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

enum LoginStatus {
  Initial,
  Loggined,
}

@lazySingleton
class AuthService extends ChangeNotifier {
  final AuthContract _authContract;
  final UserContract _userContract;
  final TokenContract _tokenContract;

  AuthService(
    this._authContract,
    this._tokenContract,
    this._userContract,
  );

  LoginStatus _status = LoginStatus.Initial;
  UserContainer _user = UserContainer(null);
  TokenContainer _token = TokenContainer(null);

  Token? get token => _token.token;
  User? get user => _user.user;
  LoginStatus get status => _status;

  void login(String email, String password) async {
    final request = LoginRequest(email: email, password: password);
    final response = await _authContract.login(request);

    if (!response.isSuccess) {
      /// Show Error
      return;
    }

    _user = _user.copyWith(user: response.response?.user);
    _token = _token.copyWith(token: response.response?.token);
    _status = LoginStatus.Loggined;
    notifyListeners();

    if (user != null) {
      await _userContract.save(user!);
    }

    if (token != null) {
      await _tokenContract.save(token!);
    }
  }
}
