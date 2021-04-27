import 'package:flutter/material.dart' hide FocusManager;
import 'package:flutter_screenutil/screen_util.dart';
import 'package:base_project/common/logic/focus/focus_manager.dart';
import 'package:base_project/common/logic/focus/i_focus_manager.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/domain/auth/bloc/auth_bloc.dart';
import 'package:base_project/domain/auth/requests/registration_request/registration_request_body.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/utils/get_screen_height.dart';
import 'package:base_project/presentation/widgets/app_logo.dart';
import 'package:base_project/presentation/widgets/app_button.dart';
import 'package:base_project/presentation/widgets/app_check_box.dart';
import 'package:base_project/presentation/widgets/app_text_field.dart';
import 'package:base_project/presentation/widgets/content_button.dart';
import 'package:base_project/presentation/widgets/background_image.dart';
import 'package:base_project/common/presentors/screen/i_screen_manager.dart';
import 'package:base_project/presentation/layouts/main_layout/main_layout.dart';

const String _kFirstName = 'focus_first_name';
const String _kLastName = 'focus_last_name';
const String _kEmail = 'focus_email';
const String _kPhone = 'focus_phone';
const String _kPassword = 'focus_password';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  IScreenManager get _screenManager => dependencyContainer!.get<IScreenManager>();
  AppRouter get _router => dependencyContainer!.get<AppRouter>();

  bool _isTermsAccepted = false;
  final FocusManager focusManager = FocusManager();
  RegistrationRequestBody body = RegistrationRequestBody();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: BackgroundImage(
        width: double.infinity,
        height: ScreenUtil().screenHeight,
        child: SafeArea(
          maintainBottomViewPadding: true,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            width: double.infinity,
            child: ListView(
              children: [
                const SizedBox(height: 20.0),
                Center(
                  child: Text(
                    dictionary.data.register.title ?? '',
                    style: AppData.textStyles.headline(
                      color: DefaultAppColors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Center(child: AppLogo()),
                const SizedBox(height: 30.0),
                AppTextField(
                  focusManager: focusManager,
                  focusKey: FocusKey(value: _kFirstName, order: 1),
                  onChange: (String value) => body = body.copyWith(firstName: value),
                  validator: (String arg) => body.validator.firstNameValidation(arg),
                  hintText: dictionary.data.hints.firstName,
                  inputType: TextInputType.name,
                ),
                AppTextField(
                  focusManager: focusManager,
                  focusKey: FocusKey(value: _kLastName, order: 2),
                  onChange: (String value) => body = body.copyWith(lastName: value),
                  validator: (String arg) => body.validator.lastNameValidation(arg),
                  hintText: dictionary.data.hints.lastName,
                  inputType: TextInputType.name,
                ),
                AppTextField(
                  focusManager: focusManager,
                  focusKey: FocusKey(value: _kEmail, order: 3),
                  onChange: (String value) => body = body.copyWith(email: value),
                  validator: (String arg) => body.validator.emailValidation(arg),
                  hintText: dictionary.data.hints.email,
                  inputType: TextInputType.emailAddress,
                ),
                AppTextField(
                  focusManager: focusManager,
                  focusKey: FocusKey(value: _kPhone, order: 4),
                  onChange: (String value) => body = body.copyWith(phone: value),
                  validator: (String arg) => body.validator.phoneValidation(arg),
                  hintText: dictionary.data.hints.phone,
                  inputType: TextInputType.phone,
                ),
                AppTextField(
                  focusManager: focusManager,
                  focusKey: FocusKey(value: _kPassword, order: 5),
                  onChange: (String value) => body = body.copyWith(password: value),
                  validator: (String arg) => body.validator.passwordValidation(arg),
                  hintText: dictionary.data.hints.password,
                  inputType: TextInputType.visiblePassword,
                  textFieldType: AppTextFieldType.Password,
                ),
                Spacer(),
                AppButton(
                  focusManager: focusManager,
                  getButtonType: _buttonType,
                  onTap: () => _register(context),
                  child: Text(
                    dictionary.data.buttons.register ?? '',
                    style: AppData.textStyles.buttons(
                      color: DefaultAppColors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppCheckBox(
                        initialValue: false,
                        onChange: (value) => setState(() => _isTermsAccepted = value),
                      ),
                      const SizedBox(width: 6.0),
                      Text(
                        dictionary.data.footnoteButtons.terms ?? '',
                        style: AppData.textStyles.footnote(
                          color: DefaultAppColors.white,
                        ),
                      ),
                      const SizedBox(width: 2.0),
                      ContentButton(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        onTap: () => _router.push(TermsScreenRoute()),
                        child: Text(
                          dictionary.data.register.footnoteButton ?? '',
                          style: AppData.textStyles.footnote(
                            color: DefaultAppColors.pinkyLight,
                          ),
                        ),
                      ),
                    ],
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
    return body.validator.isValid && _isTermsAccepted ? AppButtonType.Default : AppButtonType.Disabled;
  }

  void _register(BuildContext context) {
    dependencyContainer!.get<AuthBloc>().add(AuthEvent.register(body));
  }
}
