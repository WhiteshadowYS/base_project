import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_freelancers.freezed.dart';
part 'language_freelancers.g.dart';

@freezed
class LanguageFreelancers with _$LanguageFreelancers {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageFreelancers({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'models') String? models,
    @JsonKey(name: 'photographers') String? photographers,
    @JsonKey(name: 'users') String? users,
    @JsonKey(name: 'photos') String? photos,
    @JsonKey(name: 'rate') String? rate,
  }) = _LanguageFreelancers;

  factory LanguageFreelancers.fromJson(Map<String, dynamic> json) => _$LanguageFreelancersFromJson(json);
}
