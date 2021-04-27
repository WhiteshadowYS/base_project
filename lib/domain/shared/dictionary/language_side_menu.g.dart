// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_side_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageSideMenu _$_$_LanguageSideMenuFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageSideMenu', json, () {
    final val = _$_LanguageSideMenu(
      title: $checkedConvert(json, 'title', (v) => v as String?),
      settings: $checkedConvert(json, 'settings', (v) => v as String?),
      notifications:
          $checkedConvert(json, 'notifications', (v) => v as String?),
      logout: $checkedConvert(json, 'logout', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_LanguageSideMenuToJson(
        _$_LanguageSideMenu instance) =>
    <String, dynamic>{
      'title': instance.title,
      'settings': instance.settings,
      'notifications': instance.notifications,
      'logout': instance.logout,
    };
