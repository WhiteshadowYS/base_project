import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_side_menu.freezed.dart';
part 'language_side_menu.g.dart';

@freezed
class LanguageSideMenu with _$LanguageSideMenu {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageSideMenu({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'settings') String? settings,
    @JsonKey(name: 'notifications') String? notifications,
    @JsonKey(name: 'logout') String? logout,
  }) = _LanguageSideMenu;

  factory LanguageSideMenu.fromJson(Map<String, dynamic> json) => _$LanguageSideMenuFromJson(json);
}
