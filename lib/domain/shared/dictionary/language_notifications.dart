import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_notifications.freezed.dart';
part 'language_notifications.g.dart';

@freezed
class LanguageNotifications with _$LanguageNotifications {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageNotifications({
    @JsonKey(name: 'title') String? title,
  }) = _LanguageNotifications;

  factory LanguageNotifications.fromJson(Map<String, dynamic> json) => _$LanguageNotificationsFromJson(json);
}
