import 'package:base_project/utils/base_elements/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginScreenVM extends ChangeNotifier with BaseViewModel {
  // StreamSubscription? _authBlocSybscription;

  LoginScreenVM() {
    // _authBlocSybscription = _authBloc.stream.listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    super.dispose();
    // _authBlocSybscription?.cancel();
  }

  String get title => 'SignIn';
  String get googleSignInButtonText => 'Sign In With Google';
  String get emailSignInButtonText => 'Sign In With Email';

  // void signInWithGoogle() => _authBloc.add(AuthorizationEvent.signIn(_googleSignInContract));

  // void signInWithEmail(EmailSignInDto data) {
  //   _emailSignInContract.data = data;

  //   _authBloc.addWith(
  //     AuthorizationEvent.signIn(_emailSignInContract),
  //     onDone: () {},
  //     onError: (Error error) => warningPrint(error.readebleError),
  //   );
  // }
}
