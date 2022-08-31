import 'package:base_project/source/auth/auth_service.dart';
import 'package:base_project/utils/base_elements/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginScreenVM extends ChangeNotifier with BaseViewModel {
  final AuthService _authService;

  LoginScreenVM(
    this._authService,
  ) {
    _authService.addListener(_authListener);
  }

  @override
  void dispose() {
    super.dispose();
    _authService.removeListener(_authListener);
  }

  void _authListener() {
    /// U can update data in VM by listener connected to the service.
    /// Or you can connect widgets to services without VM
  }

  String get title => 'SignIn';
  String get googleSignInButtonText => 'Sign In With Google';
  String get emailSignInButtonText => 'Sign In With Email';

  void signInWithEmail(String email, String password) => _authService.login(email, password);
}
