import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:base_project/domain/auth/bloc/auth_bloc.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/utils/get_screen_height.dart';
import 'package:base_project/presentation/widgets/app_logo.dart';
import 'package:base_project/presentation/widgets/app_button.dart';
import 'package:base_project/common/logic/focus/i_focus_manager.dart';
import 'package:base_project/presentation/widgets/app_text_field.dart';
import 'package:base_project/presentation/widgets/background_image.dart';
import 'package:base_project/common/presentors/screen/i_screen_manager.dart';
import 'package:base_project/presentation/layouts/main_layout/main_layout.dart';
import 'package:base_project/domain/auth/requests/forgot_password/forgot_password_body.dart';

const String _kEmail = 'focus_email';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final IFocusManager focusManager = dependencyContainer!.get<IFocusManager>();
  ForgotPasswordBody body = ForgotPasswordBody();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: BackgroundImage(
        width: double.infinity,
        height: ScreenUtil().screenHeight,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            width: double.infinity,
            child: ListView(
              children: [
                const SizedBox(height: 100.0),
                Center(child: AppLogo()),
                const SizedBox(height: 160.0),
                AppTextField(
                  focusManager: focusManager,
                  focusKey: FocusKey(value: _kEmail, order: 1),
                  onChange: (String value) => body = body.copyWith(email: value),
                  validator: (String arg) => body.validator.emailValidation(arg),
                  inputType: TextInputType.emailAddress,
                  hintText: dictionary.data.hints.email,
                ),
                Spacer(),
                AppButton(
                  focusManager: focusManager,
                  onTap: () => _find(context),
                  getButtonType: _buttonType,
                  child: Text(
                    dictionary.data.buttons.save ?? '',
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
      ),
    );
  }

  AppButtonType _buttonType() {
    return body.validator.isValid ? AppButtonType.Default : AppButtonType.Disabled;
  }

  void _find(BuildContext context) {
    dependencyContainer!.get<AuthBloc>().add(AuthEvent.fogotPassword(body: body));
  }
}
