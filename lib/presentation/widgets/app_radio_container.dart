import 'package:flutter/material.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/common/presentors/screen/i_screen_manager.dart';

class AppRadioContainer extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String languageCode;
  final void Function(String) callback;

  AppRadioContainer({
    required this.title,
    required this.isSelected,
    required this.callback,
    required this.languageCode,
  });

  IScreenManager get _screenManager => dependencyContainer!.get<IScreenManager>();

  Icon get _icon {
    if (isSelected) {
      return Icon(
        Icons.radio_button_checked_rounded,
        color: DefaultAppColors.mainPurple,
      );
    }
    return Icon(
      Icons.radio_button_off_rounded,
      color: DefaultAppColors.greyTwo,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0 * _screenManager.scale,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: DefaultAppColors.greyTwo),
        color: DefaultAppColors.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: () => callback(languageCode),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Text(
                  title,
                  style: AppData.textStyles.body(
                    scale: _screenManager.scale,
                  ),
                ),
                Spacer(),
                _icon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
