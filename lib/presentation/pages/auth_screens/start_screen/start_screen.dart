import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/domain/auth/bloc/auth_bloc.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/utils/get_screen_height.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/presentation/widgets/app_logo.dart';
import 'package:base_project/presentation/widgets/app_button.dart';
import 'package:base_project/presentation/widgets/content_button.dart';
import 'package:base_project/presentation/widgets/background_image.dart';
import 'package:base_project/common/presentors/screen/screen_manager.dart';
import 'package:base_project/common/presentors/screen/i_screen_manager.dart';
import 'package:base_project/presentation/layouts/main_layout/main_layout.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  IScreenManager get _screenManager => dependencyContainer!.get<IScreenManager>();
  AppRouter get _router => dependencyContainer!.get<AppRouter>();

  @override
  void initState() {
    super.initState();
    dependencyContainer!.get<AuthBloc>().add(AuthEvent.logout());
  }

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
                Center(child: AppLogo()).scale,
                const SizedBox(height: 100.0),
                Text(
                  dictionary.data.start.content ?? '',
                  style: AppData.textStyles.largeTitle(
                    color: DefaultAppColors.white,
                    scale: _screenManager.scale,
                  ),
                ),
                SizedBox(height: ScreenUtil().screenHeight / 4),
                AppButton(
                  onTap: () => _router.push(RegistrationScreenRoute()),
                  child: Text(
                    dictionary.data.buttons.register ?? '',
                    style: AppData.textStyles.buttons(
                      color: DefaultAppColors.white,
                      scale: _screenManager.scale,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                ContentButton(
                  margin: const EdgeInsets.symmetric(horizontal: 15.0),
                  onTap: () => _router.push(LoginScreenRoute()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dictionary.data.start.footnoteText ?? '',
                        style: AppData.textStyles.footnote(
                          color: DefaultAppColors.white,
                          scale: _screenManager.scale,
                        ),
                      ),
                      const SizedBox(width: 6.0),
                      Text(
                        dictionary.data.footnoteButtons.login ?? '',
                        style: AppData.textStyles.footnote(
                          color: DefaultAppColors.pinkyLight,
                          scale: _screenManager.scale,
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
}
