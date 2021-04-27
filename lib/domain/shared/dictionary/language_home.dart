import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_home.freezed.dart';
part 'language_home.g.dart';

@freezed
class LanguageHome with _$LanguageHome {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageHome({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
  }) = _LanguageHome;

  factory LanguageHome.fromJson(Map<String, dynamic> json) => _$LanguageHomeFromJson(json);
}
