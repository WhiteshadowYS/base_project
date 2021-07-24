import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:flutter/material.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/source/authorization/infrastructure/contracts/sign_in/email_sign_in_contract.dart';
import 'package:base_project/source/authorization/infrastructure/contracts/sign_in/google_sign_in_contract.dart';

class LoginScreen extends StatelessWidget {
  AuthorizationBloc get _authBloc => getIt<AuthorizationBloc>();
  final GoogleSignInContract _googleSignInContract = getIt<GoogleSignInContract>();
  final EmailSignInContract _emailSignInContract = getIt<EmailSignInContract>()..data = EmailSignInDto.mock();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      background: theme.accent,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _button(
              text: 'Email Sign In',
              onTap: () => _authBloc.add(AuthorizationEvent.signIn(_emailSignInContract)),
            ),
            const SizedBox(height: 40.0),
            _button(
              text: 'Google Sign In',
              onTap: () => _authBloc.add(AuthorizationEvent.signIn(_googleSignInContract)),
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
