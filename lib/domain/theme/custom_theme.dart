import 'package:base_project_template/domain/theme/data/default_theme.dart';
import 'package:base_project_template/domain/theme/models/app_colors.dart';
import 'package:base_project_template/domain/theme/models/app_text_styles.dart';
import 'package:base_project_template/domain/theme/models/app_theme.dart';
import 'package:base_project_template/domain/theme/models/colors_dto.dart';
import 'package:base_project_template/utils/check_is_hex_dark.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  static const String tag = '[CustomTheme]';

  CustomTheme._privateConstructor() {
    _theme = defaultTheme;
  }

  static final CustomTheme _instance = CustomTheme._privateConstructor();

  static CustomTheme get instance => _instance;

  AppTheme? _theme;

  void setNewTheme(AppTheme thm) {
    print('$tag => setNewTheme() => theme => ${thm.themeName}');
    _theme = thm;
  }

  void setColorsFromJson(Map<String, dynamic> json) {
    print('$tag => <setColorsFromJson()> => json => $json');
    final AppColors newColors = colors!.fromColorsDTO(ColorsDTO.fromJson(json));

    _theme = _theme!.copyWith(
      colors: newColors,
      textStyles: textStyles!.copyWith(
        titleTextColor: newColors.font,
        mainTextColor: newColors.minorFont,
        accentTextColor: newColors.accentFont,
        additionalTextColor: newColors.buttonFont,
      ),
    );

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: _theme?.colors?.background,
      statusBarBrightness: _getBrightness(_theme?.colors?.background),
      statusBarIconBrightness: _getBrightness(_theme?.colors?.background),
    ));
  }

  void setFontFamily(String fontFamily) {
    print('$tag => <setFontFamily()> => fontFamily => $fontFamily');
    _theme?.copyWith(
      textStyles: textStyles!.copyWith(fontFamily: fontFamily),
    );
  }

  void setDefaultTheme() {
    print('$tag => <setDefaultTheme()>');
    _theme = defaultTheme;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: _theme?.colors?.background,
      statusBarBrightness: _getBrightness(_theme?.colors?.background),
      statusBarIconBrightness: _getBrightness(_theme?.colors?.background),
    ));
  }

  Brightness _getBrightness(Color? backgroundHex) {
    String hex = backgroundHex.toString();
    hex = hex.replaceAll('Color(0x', '');
    hex = hex.replaceAll(')', '');

    final bool isBackgroundDark = checkIsHexDark(hex);

    if (isBackgroundDark) return Brightness.dark;

    return Brightness.light;
  }

  static AppColors? get colors => instance._theme?.colors;

  static AppTextStyles? get textStyles => instance._theme?.textStyles;
}
