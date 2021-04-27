// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_freelancers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageFreelancers _$_$_LanguageFreelancersFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageFreelancers', json, () {
    final val = _$_LanguageFreelancers(
      title: $checkedConvert(json, 'title', (v) => v as String?),
      models: $checkedConvert(json, 'models', (v) => v as String?),
      photographers:
          $checkedConvert(json, 'photographers', (v) => v as String?),
      users: $checkedConvert(json, 'users', (v) => v as String?),
      photos: $checkedConvert(json, 'photos', (v) => v as String?),
      rate: $checkedConvert(json, 'rate', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_LanguageFreelancersToJson(
        _$_LanguageFreelancers instance) =>
    <String, dynamic>{
      'title': instance.title,
      'models': instance.models,
      'photographers': instance.photographers,
      'users': instance.users,
      'photos': instance.photos,
      'rate': instance.rate,
    };
