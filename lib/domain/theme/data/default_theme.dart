import 'package:base_project_template/domain/theme/models/app_colors.dart';
import 'package:base_project_template/domain/theme/models/app_text_styles.dart';
import 'package:base_project_template/domain/theme/models/app_theme.dart';
import 'package:base_project_template/res/app_data.dart';

AppTheme defaultTheme = AppTheme(
  themeName: 'default_theme',
  colors: AppColors(
    primaryColor: DefaultAppColors.primary,
    accentColor: DefaultAppColors.accent,
    errorColor: DefaultAppColors.red,
    font: DefaultAppColors.grey,
    minorFont: DefaultAppColors.lightGrey,
    accentFont: DefaultAppColors.accent,
    background: DefaultAppColors.white,
    footerIcons: DefaultAppColors.primary,
    footerIconsSelected: DefaultAppColors.primary,
    footerBackground: DefaultAppColors.white,
    buttonFont: DefaultAppColors.white,
    buttons: DefaultAppColors.primary,
    popupBackground: DefaultAppColors.white,
    popupText: DefaultAppColors.grey,
    popupCloseButton: DefaultAppColors.primary,
    popupOkButton: DefaultAppColors.primary,
    popupCancelButton: DefaultAppColors.primary,
  ),
  textStyles: AppTextStyles(
    fontFamily: 'Ubuntu',
    mainTextColor: DefaultAppColors.black.withOpacity(0.6),
    titleTextColor: DefaultAppColors.white,
    additionalTextColor: DefaultAppColors.white,
    accentTextColor: DefaultAppColors.primary,
  ),
);
