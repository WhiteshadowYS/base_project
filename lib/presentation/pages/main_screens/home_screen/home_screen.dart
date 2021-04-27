import 'package:flutter/material.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/presentation/widgets/app_button.dart';
import 'package:base_project/presentation/widgets/background_image.dart';
import 'package:base_project/presentation/layouts/main_layout/main_layout.dart';
import 'package:base_project/presentation/layouts/app_bar/default_app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppRouter get _router => dependencyContainer!.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appbar: DefaultAppBar(),
      child: BackgroundImage(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dictionary.data.home.title ?? '',
                        style: AppData.textStyles.title1(
                          color: DefaultAppColors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        dictionary.data.home.body ?? '',
                        style: AppData.textStyles.body(
                          color: DefaultAppColors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                AppButton(
                  onTap: () {},
                  child: Text(
                    dictionary.data.buttons.findFreelancers ?? '',
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
}
