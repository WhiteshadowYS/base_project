import 'package:injectable/injectable.dart';
import 'package:base_project/utils/base_elements/base_presenter.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';

@lazySingleton
class LoginScreenPresenter extends BasePresenter {
  final AuthorizationBloc _authBloc;

  LoginScreenPresenter(
    this._authBloc,
  );

  String get title => 'SignIn';
  int get counter => _authBloc.state.counter ?? 0;
  String get googleSignInButtonText => 'Sign In With Google';
  String get emailSignInButtonText => 'Sign In With Email';
}
