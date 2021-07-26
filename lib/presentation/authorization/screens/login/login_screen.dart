import 'package:base_project/config/app_router.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_presentor.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_vm.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/utils/base_elements/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseState<LoginScreenVM, LoginScreenPresenter, LoginScreen> {
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
              text: presenter.emailSignInButtonText,
              onTap: () => viewModel.signInWithEmail(EmailSignInDto.mock()),
            ),
            const SizedBox(height: 40.0),
            _button(
              text: presenter.googleSignInButtonText,
              onTap: viewModel.signInWithGoogle,
            ),
            const SizedBox(height: 40.0),
            stateObserver<AuthorizationBloc>(
              builder: (_) => _button(
                text: 'counter: ${presenter.counter}',
                onTap: () => viewModel.increment(),
              ),
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
