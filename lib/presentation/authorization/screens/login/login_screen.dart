import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_vm.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:base_project/utils/base_elements/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen() : super(key: const Key('LoginScreenKey'));

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseState<LoginScreenVM, LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      background: UIManager.theme.accent,
      child: ChangeNotifierProvider(
        create: (_) => viewModel,
        builder: (ctx, _) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _button(
                  text: viewModel.emailSignInButtonText,
                  onTap: () => viewModel.signInWithEmail(EmailSignInDto.mock()),
                ),
                const SizedBox(height: 40.0),
                _button(
                  text: viewModel.googleSignInButtonText,
                  onTap: viewModel.signInWithGoogle,
                ),
                const SizedBox(height: 40.0),
                selector(
                  selector: () => viewModel.counter,
                  builder: (ctx, _) {
                    return _button(
                      text: 'counter: ${viewModel.counter}',
                      onTap: () => viewModel.increment(),
                    );
                  },
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          );
        },
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
          color: UIManager.theme.primary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
