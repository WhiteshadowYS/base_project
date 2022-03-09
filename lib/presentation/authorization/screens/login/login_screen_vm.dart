import 'dart:async';

import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/source/authorization/infrastructure/contracts/sign_in/email_sign_in_contract.dart';
import 'package:base_project/source/authorization/infrastructure/contracts/sign_in/google_sign_in_contract.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:base_project/utils/base_elements/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginScreenVM extends ChangeNotifier with BaseViewModel {
  final AuthorizationBloc _authBloc;
  final GoogleSignInContract _googleSignInContract;
  final EmailSignInContract _emailSignInContract;

  StreamSubscription? _authBlocSybscription;

  LoginScreenVM(
    this._authBloc,
    this._emailSignInContract,
    this._googleSignInContract,
  ) {
    _authBlocSybscription = _authBloc.stream.listen((_) => notifyListeners());
  }

  int _counter = 0;

  @override
  void dispose() {
    super.dispose();
    _authBlocSybscription?.cancel();
  }

  int get counter => _authBloc.state.counter ?? 0;
  int get counter2 => _counter;

  String get title => 'SignIn';
  String get googleSignInButtonText => 'Sign In With Google';
  String get emailSignInButtonText => 'Sign In With Email';

  VoidCallback get increment {
    return () {
      _counter++;
      _authBloc.add(AuthorizationEvent.increment());
      notifyListeners();
    };
  }

  VoidCallback get signInWithGoogle {
    return () {
      _authBloc.add(
        AuthorizationEvent.signIn(_googleSignInContract),
      );
    };
  }

  void Function(EmailSignInDto) get signInWithEmail {
    return (EmailSignInDto data) {
      _emailSignInContract.data = data;

      _authBloc.addWith(
        AuthorizationEvent.signIn(_emailSignInContract),
        onComplete: () {
          print('Hello from on complite');
        },
        onCancel: () {},
        onError: () {},
      );
    };
  }
}
