// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomePageLanguage _$_$_HomePageLanguageFromJson(Map<String, dynamic> json) {
  return _$_HomePageLanguage(
    title: json['title'] as String?,
    createdOrdersTitle: json['createdOrdersTitle'] as String?,
    activeOrdersTitle: json['activeOrdersTitle'] as String?,
    closedOrdersTitle: json['closedOrdersTitle'] as String?,
    closeOrder: json['closeOrder'] as String?,
    startOrder: json['startOrder'] as String?,
    startText: json['startText'] as String?,
    endText: json['endText'] as String?,
  );
}

Map<String, dynamic> _$_$_HomePageLanguageToJson(
        _$_HomePageLanguage instance) =>
    <String, dynamic>{
      'title': instance.title,
      'createdOrdersTitle': instance.createdOrdersTitle,
      'activeOrdersTitle': instance.activeOrdersTitle,
      'closedOrdersTitle': instance.closedOrdersTitle,
      'closeOrder': instance.closeOrder,
      'startOrder': instance.startOrder,
      'startText': instance.startText,
      'endText': instance.endText,
    };
