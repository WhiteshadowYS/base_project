import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'colors_dto.freezed.dart';
part 'colors_dto.g.dart';

@freezed
class ColorsDTO with _$ColorsDTO {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory ColorsDTO({
    String? primaryColor,
    String? accentColor,
    String? errorColor,
    String? font,
    String? minorFont,
    String? accentFont,
    String? background,
    String? footerIcons,
    String? footerIconsSelected,
    String? footerBackground,
    String? buttonFont,
    String? buttons,
    String? popupBackground,
    String? popupText,
    String? popupCloseButton,
    String? popupOkButton,
    String? popupCancelButton,
  }) = _ColorsDTO;

  factory ColorsDTO.fromJson(Map<String, dynamic> json) => _$ColorsDTOFromJson(json);
}
