import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project_template/data/dictionary/models/global/global_language.dart';
import 'package:base_project_template/data/dictionary/models/home_page/home_page_language.dart';
import 'package:base_project_template/data/dictionary/models/login_page/login_page_language.dart';

part 'language.freezed.dart';
part 'language.g.dart';

@freezed
class Language with _$Language {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Language({
    required HomePageLanguage homePage,
    required LoginPageLanguage loginPage,
    required GlobalLanguage global,
    String? name,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}
