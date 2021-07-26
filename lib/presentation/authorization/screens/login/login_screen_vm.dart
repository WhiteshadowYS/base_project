import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/source/authorization/infrastructure/contracts/sign_in/email_sign_in_contract.dart';
import 'package:base_project/source/authorization/infrastructure/contracts/sign_in/google_sign_in_contract.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/utils/base_elements/base_view_model.dart';

@lazySingleton
class LoginScreenVM implements BaseViewModel {
  final AuthorizationBloc _authBloc;
  final GoogleSignInContract _googleSignInContract;
  final EmailSignInContract _emailSignInContract;

  LoginScreenVM(
    this._authBloc,
    this._emailSignInContract,
    this._googleSignInContract,
  );

  VoidCallback get increment => () => _authBloc.add(AuthorizationEvent.increment());
  VoidCallback get signInWithGoogle => () => _authBloc.add(AuthorizationEvent.signIn(_googleSignInContract));
  void Function(EmailSignInDto) get signInWithEmail => (EmailSignInDto data) {
        _emailSignInContract.data = data;
        _authBloc.add(AuthorizationEvent.signIn(_emailSignInContract));
      };
}
