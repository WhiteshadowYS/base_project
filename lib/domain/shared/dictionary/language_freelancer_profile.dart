import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_freelancer_profile.freezed.dart';
part 'language_freelancer_profile.g.dart';

@freezed
class LanguageFreelancerProfile with _$LanguageFreelancerProfile {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageFreelancerProfile({
    @JsonKey(name: 'special_notes') String? specialNotes,
    @JsonKey(name: 'folder_1') String? folder1,
    @JsonKey(name: 'folder_2') String? folder2,
    @JsonKey(name: 'folder_3') String? folder3,
    @JsonKey(name: 'folder_4') String? folder4,
    @JsonKey(name: 'folder_5') String? folder5,
    @JsonKey(name: 'folder_6') String? folder6,
    @JsonKey(name: 'folder_7') String? folder7,
    @JsonKey(name: 'folder_8') String? folder8,
    @JsonKey(name: 'folder_9') String? folder9,
    @JsonKey(name: 'drone') String? drone,
    @JsonKey(name: 'background') String? background,
    @JsonKey(name: 'videography') String? videography,
  }) = _LanguageFreelancerProfile;

  factory LanguageFreelancerProfile.fromJson(Map<String, dynamic> json) => _$LanguageFreelancerProfileFromJson(json);
}
