import 'package:flutter/material.dart';
import 'package:base_project_template/domain/theme/custom_theme.dart';
import 'package:base_project_template/presentation/shared/base_state.dart';
import 'package:base_project_template/presentation/widgets/app_button.dart';
import 'package:base_project_template/data/dictionary/flutter_dictionary.dart';
import 'package:base_project_template/presentation/widgets/app_text_field.dart';
import 'package:base_project_template/data/managers/screen_manager/screen_manager.dart';
import 'package:base_project_template/presentation/layouts/main_layout/main_layout.dart';
import 'package:base_project_template/presentation/pages/login_page/bloc/login_page_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends BaseState<LoginPageState, LoginPageBloc, LoginPage> {
  final lng = FlutterDictionary.instance.language;

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passController = TextEditingController();

  @override
  Widget buildWidget(BuildContext context) {
    return stateObserver(
      context,
      (LoginPageState state) {
        return MainLayout(
          key: Key('[LoginPage]'),
          child: ScreenManagerBuilder(
            phoneBuilder: (BuildContext context, Widget child) => child,
            webBuilder: (BuildContext context, Widget child) {
              return Row(
                children: [
                  Expanded(
                    child: Image.network(
                      'https://64.media.tumblr.com/8e45dd37ad83f4ff31aac66c8e537f34/tumblr_o8ydrbMZNG1vuoripo2_640.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: child,
                  ),
                ],
              );
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          lng?.loginPage.title ?? '',
                          style: CustomTheme.textStyles?.accentTextStyle(
                            size: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ).scale,
                      const SizedBox(height: 32),
                      AppTextField(
                        keyValue: 'emailField-',
                        controller: _emailController,
                        hintText: '${lng?.loginPage.emailHint}',
                      ),
                      const SizedBox(height: 8.0),
                      AppTextField(
                        keyValue: 'passField-',
                        controller: _passController,
                        hintText: '${lng?.loginPage.passwordHint}',
                      ),
                      const SizedBox(height: 100.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: AppButton(
                          radius: 20.0,
                          height: 48.0,
                          onTap: () => bloc(context).add(LoginPageEvent.login()),
                          child: Text(
                            lng?.loginPage.title ?? '',
                            style: CustomTheme.textStyles?.buttonTextStyle(),
                          ).scale,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
