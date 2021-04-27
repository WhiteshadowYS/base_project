import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/domain/shared/dictionary/language_buttons.dart';
import 'package:base_project/domain/shared/dictionary/language_footnote_buttons.dart';
import 'package:base_project/domain/shared/dictionary/language_freelancer_profile.dart';
import 'package:base_project/domain/shared/dictionary/language_freelancers.dart';
import 'package:base_project/domain/shared/dictionary/language_hints.dart';

import 'language_errors.dart';
import 'language_global.dart';
import 'language_home.dart';
import 'language_login.dart';
import 'language_notifications.dart';
import 'language_password_recovery.dart';
import 'language_payments.dart';
import 'language_profile.dart';
import 'language_register.dart';
import 'language_settings.dart';
import 'language_side_menu.dart';
import 'language_start.dart';
import 'language_terms.dart';

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
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'start') required LanguageStart start,
    @JsonKey(name: 'home') required LanguageHome home,
    @JsonKey(name: 'login') required LanguageLogin login,
    @JsonKey(name: 'register') required LanguageRegister register,
    @JsonKey(name: 'password_recovery') required LanguagePasswordRecovery passwordRecovery,
    @JsonKey(name: 'side_menu') required LanguageSideMenu sideMenu,
    @JsonKey(name: 'errors') required LanguageErrors errors,
    @JsonKey(name: 'global') required LanguageGlobal global,
    @JsonKey(name: 'terms') required LanguageTerms terms,
    @JsonKey(name: 'settings') required LanguageSettings settings,
    @JsonKey(name: 'notifications') required LanguageNotifications notifications,
    @JsonKey(name: 'payments') required LanguagePayments payments,
    @JsonKey(name: 'profile') required LanguageProfile profile,
    @JsonKey(name: 'buttons') required LanguageButtons buttons,
    @JsonKey(name: 'footnote_buttons') required LanguageFootnoteButtons footnoteButtons,
    @JsonKey(name: 'hints') required LanguageHints hints,
    @JsonKey(name: 'freelancer_profile') required LanguageFreelancerProfile freelancerProfile,
    @JsonKey(name: 'freelancers') required LanguageFreelancers freelancers,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}
