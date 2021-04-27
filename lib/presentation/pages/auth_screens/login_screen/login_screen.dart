import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/domain/auth/bloc/auth_bloc.dart';
import 'package:base_project/presentation/widgets/app_logo.dart';
import 'package:base_project/presentation/widgets/app_button.dart';
import 'package:base_project/presentation/widgets/app_text_field.dart';
import 'package:base_project/presentation/widgets/content_button.dart';
import 'package:base_project/presentation/widgets/background_image.dart';
import 'package:base_project/presentation/layouts/main_layout/main_layout.dart';
import 'package:base_project/common/logic/focus/focus_manager.dart' as fm;
import 'package:base_project/domain/auth/requests/login_request/login_request_body.dart';

const String _kEmail = 'focus_email';
const String _kPassword = 'focus_password';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AppRouter get _router => dependencyContainer!.get<AppRouter>();

  final fm.FocusManager focusManager = fm.FocusManager();

  LoginRequestBody _requestBody = LoginRequestBody();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      focusManager: focusManager,
      child: BackgroundImage(
        height: ScreenUtil().screenHeight,
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              const SizedBox(height: 40.0),
              Center(
                child: Text(
                  dictionary.data.login.title ?? '',
                  style: AppData.textStyles.headline(
                    color: DefaultAppColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Center(child: AppLogo()),
              const SizedBox(height: 160.0),
              AppTextField(
                focusManager: focusManager,
                focusKey: fm.FocusKey(value: _kEmail, order: 1),
                onChange: (String value) => _requestBody = _requestBody.copyWith(email: value),
                validator: _requestBody.validator.emailValidation,
                hintText: dictionary.data.hints.email,
                inputType: TextInputType.emailAddress,
              ),
              AppTextField(
                focusManager: focusManager,
                focusKey: fm.FocusKey(value: _kPassword, order: 2),
                onChange: (String value) => _requestBody = _requestBody.copyWith(password: value),
                validator: _requestBody.validator.passwordValidation,
                hintText: dictionary.data.hints.password,
                inputType: TextInputType.visiblePassword,
                textFieldType: AppTextFieldType.Password,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Text(
                      dictionary.data.login.footnoteText ?? '',
                      style: AppData.textStyles.footnote(
                        color: DefaultAppColors.white,
                      ),
                    ),
                    const SizedBox(width: 6.0),
                    ContentButton(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      onTap: () => _router.push(ForgotPasswordScreenRoute()),
                      child: Text(
                        dictionary.data.footnoteButtons.remindMe ?? '',
                        style: AppData.textStyles.footnote(
                          color: DefaultAppColors.pinkyLight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().screenHeight / 4),
              AppButton(
                onTap: () => _login(context),
                getButtonType: _buttonType,
                focusManager: focusManager,
                child: Text(
                  dictionary.data.buttons.login ?? '',
                  style: AppData.textStyles.buttons(
                    color: DefaultAppColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 45.0),
            ],
          ),
        ),
      ),
    );
  }

  AppButtonType _buttonType() {
    return _requestBody.validator.isValid ? AppButtonType.Default : AppButtonType.Disabled;
  }

  void _login(BuildContext context) {
    dependencyContainer!.get<AuthBloc>().add(
          AuthEvent.login(_requestBody),
        );
  }
}
