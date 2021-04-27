// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Language', json, () {
    final val = _$_Language(
      name: $checkedConvert(json, 'name', (v) => v as String),
      code: $checkedConvert(json, 'code', (v) => v as String),
      start: $checkedConvert(json, 'start',
          (v) => LanguageStart.fromJson(v as Map<String, dynamic>)),
      home: $checkedConvert(json, 'home',
          (v) => LanguageHome.fromJson(v as Map<String, dynamic>)),
      login: $checkedConvert(json, 'login',
          (v) => LanguageLogin.fromJson(v as Map<String, dynamic>)),
      register: $checkedConvert(json, 'register',
          (v) => LanguageRegister.fromJson(v as Map<String, dynamic>)),
      passwordRecovery: $checkedConvert(json, 'password_recovery',
          (v) => LanguagePasswordRecovery.fromJson(v as Map<String, dynamic>)),
      sideMenu: $checkedConvert(json, 'side_menu',
          (v) => LanguageSideMenu.fromJson(v as Map<String, dynamic>)),
      errors: $checkedConvert(json, 'errors',
          (v) => LanguageErrors.fromJson(v as Map<String, dynamic>)),
      global: $checkedConvert(json, 'global',
          (v) => LanguageGlobal.fromJson(v as Map<String, dynamic>)),
      terms: $checkedConvert(json, 'terms',
          (v) => LanguageTerms.fromJson(v as Map<String, dynamic>)),
      settings: $checkedConvert(json, 'settings',
          (v) => LanguageSettings.fromJson(v as Map<String, dynamic>)),
      notifications: $checkedConvert(json, 'notifications',
          (v) => LanguageNotifications.fromJson(v as Map<String, dynamic>)),
      payments: $checkedConvert(json, 'payments',
          (v) => LanguagePayments.fromJson(v as Map<String, dynamic>)),
      profile: $checkedConvert(json, 'profile',
          (v) => LanguageProfile.fromJson(v as Map<String, dynamic>)),
      buttons: $checkedConvert(json, 'buttons',
          (v) => LanguageButtons.fromJson(v as Map<String, dynamic>)),
      footnoteButtons: $checkedConvert(json, 'footnote_buttons',
          (v) => LanguageFootnoteButtons.fromJson(v as Map<String, dynamic>)),
      hints: $checkedConvert(json, 'hints',
          (v) => LanguageHints.fromJson(v as Map<String, dynamic>)),
      freelancerProfile: $checkedConvert(json, 'freelancer_profile',
          (v) => LanguageFreelancerProfile.fromJson(v as Map<String, dynamic>)),
      freelancers: $checkedConvert(json, 'freelancers',
          (v) => LanguageFreelancers.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {
    'passwordRecovery': 'password_recovery',
    'sideMenu': 'side_menu',
    'footnoteButtons': 'footnote_buttons',
    'freelancerProfile': 'freelancer_profile'
  });
}

Map<String, dynamic> _$_$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'start': instance.start.toJson(),
      'home': instance.home.toJson(),
      'login': instance.login.toJson(),
      'register': instance.register.toJson(),
      'password_recovery': instance.passwordRecovery.toJson(),
      'side_menu': instance.sideMenu.toJson(),
      'errors': instance.errors.toJson(),
      'global': instance.global.toJson(),
      'terms': instance.terms.toJson(),
      'settings': instance.settings.toJson(),
      'notifications': instance.notifications.toJson(),
      'payments': instance.payments.toJson(),
      'profile': instance.profile.toJson(),
      'buttons': instance.buttons.toJson(),
      'footnote_buttons': instance.footnoteButtons.toJson(),
      'hints': instance.hints.toJson(),
      'freelancer_profile': instance.freelancerProfile.toJson(),
      'freelancers': instance.freelancers.toJson(),
    };
