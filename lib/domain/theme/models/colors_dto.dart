import 'package:json_annotation/json_annotation.dart';

part 'colors_dto.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  checked: true,
  explicitToJson: true,
)
class ColorsDTO {
  String primaryColor;
  String accentColor;
  String errorColor;
  String font;
  String minorFont;
  String accentFont;
  String background;
  String footerIcons;
  String footerIconsSelected;
  String footerBackground;
  String buttonFont;
  String buttons;
  String popupBackground;
  String popupText;
  String popupCloseButton;
  String popupOkButton;
  String popupCancelButton;

  ColorsDTO({
    required this.primaryColor,
    required this.accentColor,
    required this.errorColor,
    required this.font,
    required this.minorFont,
    required this.accentFont,
    required this.background,
    required this.footerIcons,
    required this.footerIconsSelected,
    required this.footerBackground,
    required this.buttonFont,
    required this.buttons,
    required this.popupBackground,
    required this.popupText,
    required this.popupCloseButton,
    required this.popupOkButton,
    required this.popupCancelButton,
  });

  factory ColorsDTO.fromJson(json) => _$ColorsDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ColorsDTOToJson(this);
}
