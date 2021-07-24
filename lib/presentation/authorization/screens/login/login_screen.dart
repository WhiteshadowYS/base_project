import 'package:base_project/presentation/authorization/screens/login/login_screen_presentor.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:base_project/utils/base_elements/base_builder.dart';
import 'package:flutter/material.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_vm.dart';

class LoginScreen extends StatelessWidget {
  LoginScreenVM get _vm => getIt<LoginScreenVM>();
  LoginScreenPresenter get _presenter => getIt<LoginScreenPresenter>();

  @override
  Widget build(BuildContext context) {
    print('build');
    return MainLayout(
      background: theme.accent,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _button(
              text: _presenter.emailSignInButtonText,
              onTap: () => _vm.signInWithEmail(EmailSignInDto.mock()),
            ),
            const SizedBox(height: 40.0),
            _button(
              text: _presenter.googleSignInButtonText,
              onTap: _vm.signInWithGoogle,
            ),
            const SizedBox(height: 40.0),
            BaseBuilder<AuthorizationBloc>(
              builder: (ctx) {
                return _button(
                  text: 'counter: ${_presenter.counter}',
                  onTap: () => _vm.incrementCounter(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _button({
    required final String text,
    required final VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.0,
        width: 240.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.primary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
