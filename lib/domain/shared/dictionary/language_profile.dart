import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_profile.freezed.dart';
part 'language_profile.g.dart';

@freezed
class LanguageProfile with _$LanguageProfile {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageProfile({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'status_verified') String? statusVerified,
    @JsonKey(name: 'status_not_verified') String? statusNotVerified,
    @JsonKey(name: 'status_rejected') String? statusRejected,
    @JsonKey(name: 'contact_info_title') String? contactInfoTitle,
    @JsonKey(name: 'change_image_text') String? changeImageText,
    @JsonKey(name: 'vefify') String? vefify,
    @JsonKey(name: 'vefify_text') String? vefifyText,
  }) = _LanguageProfile;

  factory LanguageProfile.fromJson(Map<String, dynamic> json) => _$LanguageProfileFromJson(json);
}
