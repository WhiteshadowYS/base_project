import 'package:base_project_template/domain/theme/interfaces/i_app_colors.dart';
import 'package:base_project_template/domain/theme/models/colors_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AppColors implements IAppColors {
  Color primaryColor;
  Color accentColor;
  Color errorColor;

  Color font;
  Color minorFont;
  Color accentFont;
  Color buttonFont;
  Color background;
  Color footerIcons;
  Color footerIconsSelected;
  Color footerBackground;
  Color buttons;
  Color popupBackground;
  Color popupText;
  Color popupCloseButton;
  Color popupOkButton;
  Color popupCancelButton;

  Brightness? brightness;

  AppColors({
    required this.primaryColor,
    required this.accentColor,
    required this.errorColor,
    required this.font,
    required this.minorFont,
    required this.accentFont,
    required this.buttonFont,
    required this.background,
    required this.footerIcons,
    required this.footerIconsSelected,
    required this.footerBackground,
    required this.buttons,
    required this.popupBackground,
    required this.popupText,
    required this.popupCloseButton,
    required this.popupOkButton,
    required this.popupCancelButton,
  });

  AppColors fromColorsDTO(ColorsDTO colorsDTO) {
    final AppColors _c = copyWith(
      primaryColor: _hexStringToColor(colorsDTO.primaryColor),
      accentColor: _hexStringToColor(colorsDTO.accentColor),
      errorColor: _hexStringToColor(colorsDTO.errorColor),
      font: _hexStringToColor(colorsDTO.font),
      minorFont: _hexStringToColor(colorsDTO.minorFont),
      accentFont: _hexStringToColor(colorsDTO.accentFont),
      background: _hexStringToColor(colorsDTO.background),
      footerIcons: _hexStringToColor(colorsDTO.footerIcons),
      footerIconsSelected: _hexStringToColor(colorsDTO.footerIconsSelected),
      footerBackground: _hexStringToColor(colorsDTO.footerBackground),
      buttonFont: _hexStringToColor(colorsDTO.buttonFont),
      buttons: _hexStringToColor(colorsDTO.buttons),
      popupBackground: _hexStringToColor(colorsDTO.popupBackground),
      popupText: _hexStringToColor(colorsDTO.popupText),
      popupCloseButton: _hexStringToColor(colorsDTO.popupCloseButton),
      popupOkButton: _hexStringToColor(colorsDTO.popupOkButton),
      popupCancelButton: _hexStringToColor(colorsDTO.popupCancelButton),
    );

    return _c;
  }

  AppColors copyWith({
    Color? primaryColor,
    Color? accentColor,
    Color? errorColor,
    Color? font,
    Color? minorFont,
    Color? accentFont,
    Color? background,
    Color? footerIcons,
    Color? footerIconsSelected,
    Color? footerBackground,
    Color? buttonFont,
    Color? buttons,
    Color? popupBackground,
    Color? popupText,
    Color? popupCloseButton,
    Color? popupOkButton,
    Color? popupCancelButton,
  }) {
    return AppColors(
      primaryColor: primaryColor ?? this.primaryColor,
      accentColor: accentColor ?? this.accentColor,
      errorColor: errorColor ?? this.errorColor,
      font: font ?? this.font,
      minorFont: minorFont ?? this.minorFont,
      accentFont: accentFont ?? this.accentFont,
      background: background ?? this.background,
      footerIcons: footerIcons ?? this.footerIcons,
      footerIconsSelected: footerIconsSelected ?? this.footerIconsSelected,
      footerBackground: footerBackground ?? this.footerBackground,
      buttonFont: buttonFont ?? this.buttonFont,
      buttons: buttons ?? this.buttons,
      popupBackground: popupBackground ?? this.popupBackground,
      popupText: popupText ?? this.popupText,
      popupCloseButton: popupCloseButton ?? this.popupCloseButton,
      popupOkButton: popupOkButton ?? this.popupOkButton,
      popupCancelButton: popupCancelButton ?? this.popupCancelButton,
    );
  }

  Color? _hexStringToColor(String? hex) {
    try {
      return Color(int.parse('FF$hex', radix: 16));
    } catch (e) {
      print('_hexStringToColor: $e');
      return null;
    }
  }
}
