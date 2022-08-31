// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_User',
      json,
      ($checkedConvert) {
        final val = _$_User(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          company: $checkedConvert('company', (v) => v as String),
          age: $checkedConvert('age', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'company': instance.company,
      'age': instance.age,
    };
