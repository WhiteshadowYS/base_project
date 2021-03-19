// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Language', json, () {
    final val = _$_Language(
      homePage: $checkedConvert(json, 'home_page',
          (v) => HomePageLanguage.fromJson(v as Map<String, dynamic>)),
      loginPage: $checkedConvert(json, 'login_page',
          (v) => LoginPageLanguage.fromJson(v as Map<String, dynamic>)),
      global: $checkedConvert(json, 'global',
          (v) => GlobalLanguage.fromJson(v as Map<String, dynamic>)),
      name: $checkedConvert(json, 'name', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'homePage': 'home_page', 'loginPage': 'login_page'});
}

Map<String, dynamic> _$_$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'home_page': instance.homePage.toJson(),
      'login_page': instance.loginPage.toJson(),
      'global': instance.global.toJson(),
      'name': instance.name,
    };
