import 'package:flutter/material.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/utils/get_screen_height.dart';
import 'package:base_project/utils/res/style/default_colors.dart';
import 'package:base_project/presentation/widgets/app_button.dart';
import 'package:base_project/common/presentors/dialog/dialog_layout.dart';
import 'package:base_project/common/presentors/dialog/i_dialog_presenter.dart';

class DefaultDialog extends StatelessWidget {
  final String title;
  final String content;
  final String button;

  DefaultDialog({
    required this.title,
    required this.content,
    required this.button,
  });

  IDialogPresenter get _dialogPresenter => dependencyContainer!.get<IDialogPresenter>();

  @override
  Widget build(BuildContext context) {
    return DialogLayout(
      child: Container(
        width: double.infinity,
        height: getScreenHeight(context) / 3,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: DefaultAppColors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 50.0, height: 50.0),
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      style: AppData.textStyles.title2(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: InkWell(
                    onTap: () => _dialogPresenter.close(),
                    child: Icon(
                      Icons.close,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: Text(
                content,
                style: AppData.textStyles.body(),
              ),
            ),
            AppButton(
              onTap: () => _dialogPresenter.close(),
              child: Text(
                button,
                style: AppData.textStyles.buttons(
                  color: DefaultAppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
