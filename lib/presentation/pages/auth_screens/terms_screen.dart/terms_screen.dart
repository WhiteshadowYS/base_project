import 'package:flutter/material.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/presentation/widgets/app_button.dart';
import 'package:base_project/presentation/layouts/main_layout/main_layout.dart';
import 'package:base_project/presentation/layouts/app_bar/backbutton_app_bar.dart';

class TermsScreen extends StatefulWidget {
  @override
  _TermsScreenState createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  AppRouter get _router => dependencyContainer!.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: SafeArea(
        child: Column(
          children: [
            BackButtonAppBar(title: dictionary.data.terms.title ?? ''),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      dictionary.data.terms.content ?? '',
                      style: AppData.textStyles.body(),
                    ),
                  ),
                  AppButton(
                    onTap: _router.pop,
                    child: Text(
                      dictionary.data.buttons.acceptAll ?? '',
                      style: AppData.textStyles.buttons(
                        color: DefaultAppColors.white,
                      ),
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
