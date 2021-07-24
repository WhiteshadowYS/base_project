import 'package:base_project/config/config.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/source/authorization/infrastructure/contracts/sign_in/email_sign_in_contract.dart';
import 'package:base_project/source/authorization/infrastructure/contracts/sign_in/google_sign_in_contract.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginScreenVM {
  final int? counter;
  final VoidCallback signInWithGoogle;
  final VoidCallback incrementCounter;
  final void Function(EmailSignInDto) signInWithEmail;

  const LoginScreenVM({
    required this.counter,
    required this.incrementCounter,
    required this.signInWithEmail,
    required this.signInWithGoogle,
  });

  @factoryMethod
  factory LoginScreenVM.create(
    AuthorizationBloc _authorizationBloc,
    GoogleSignInContract _googleSignInContract,
    EmailSignInContract _emailSignInContract,
  ) {
    return LoginScreenVM(
      counter: _authorizationBloc.state.counter,
      incrementCounter: () => _authorizationBloc.add(
        AuthorizationEvent.increment(),
      ),
      signInWithEmail: (_data) => _authorizationBloc.add(
        AuthorizationEvent.signIn(_emailSignInContract..data = _data),
      ),
      signInWithGoogle: () => _authorizationBloc.add(
        AuthorizationEvent.signIn(_googleSignInContract),
      ),
    );
  }
}
