import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_vm.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';
import 'package:base_project/presentation/shared/widgets/app_button.dart';
import 'package:base_project/resources/resources.dart';
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
      background: UIManager.theme.background,
      child: ChangeNotifierProvider(
        create: (_) => viewModel,
        builder: (ctx, _) {
          return SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton.content(
                    height: 50.0,
                    width: double.infinity,
                    color: UIManager.theme.accent,
                    onTap: () => viewModel.signInWithEmail(EmailSignInDto.mock()),
                    child: Text(
                      viewModel.emailSignInButtonText,
                      style: Resources.textStyles.buttons(
                        color: UIManager.theme.background,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  AppButton.content(
                    height: 50.0,
                    width: double.infinity,
                    color: UIManager.theme.accent,
                    onTap: viewModel.signInWithGoogle,
                    child: Text(
                      viewModel.googleSignInButtonText,
                      style: Resources.textStyles.buttons(
                        color: UIManager.theme.background,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  selector(
                    selector: () => viewModel.counter,
                    builder: (ctx, _) {
                      return AppButton.content(
                        height: 50.0,
                        width: double.infinity,
                        color: UIManager.theme.accent,
                        onTap: () => viewModel.increment(),
                        child: Text(
                          viewModel.counter,
                          style: Resources.textStyles.buttons(
                            color: UIManager.theme.background,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
