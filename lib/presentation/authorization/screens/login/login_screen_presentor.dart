import 'package:base_project/presentation/authorization/screens/login/login_screen_vm.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginScreenPresenter {
  final LoginScreenVM _loginScreenVM;

  @factoryMethod
  LoginScreenPresenter(this._loginScreenVM);

  String get title => 'SignIn';
  int get counter => _loginScreenVM.counter ?? 0;
  String get googleSignInButtonText => 'Sign In With Google';
  String get emailSignInButtonText => 'Sign In With Email';
}
