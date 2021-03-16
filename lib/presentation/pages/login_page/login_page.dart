import 'package:base_project_template/domain/managers/screen_manager/screen_manager.dart';
import 'package:flutter/material.dart';
import 'package:base_project_template/domain/theme/custom_theme.dart';
import 'package:base_project_template/dictionary/flutter_dictionary.dart';
import 'package:base_project_template/presentation/widgets/app_button.dart';
import 'package:base_project_template/presentation/widgets/app_text_field.dart';
import 'package:base_project_template/presentation/layouts/main_layout/main_layout.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final lng = FlutterDictionary.instance.language;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    hintText: lng?.loginPage.emailHint,
                  ),
                  const SizedBox(height: 8.0),
                  AppTextField(
                    keyValue: 'passField-',
                    controller: _passController,
                    hintText: lng?.loginPage.passwordHint,
                  ),
                  const SizedBox(height: 100.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: AppButton(
                      radius: 20.0,
                      height: 48.0,
                      onTap: () {},
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
  }
}
