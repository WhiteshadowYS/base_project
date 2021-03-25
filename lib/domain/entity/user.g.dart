// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_User', json, () {
    final val = _$_User(
      creationDate: $checkedConvert(json, 'created_at',
          (v) => v == null ? null : DateTime.parse(v as String)),
      email: $checkedConvert(json, 'email', (v) => v as String?),
      username: $checkedConvert(json, 'username', (v) => v as String?),
      password: $checkedConvert(json, 'password', (v) => v as String?),
      phone: $checkedConvert(json, 'phone_number', (v) => v as String?),
      whatappNumber:
          $checkedConvert(json, 'whatsapp_number', (v) => v as String?),
      instagramAccount:
          $checkedConvert(json, 'instagram_account', (v) => v as String?),
      avater: $checkedConvert(json, 'avatar_path', (v) => v as String?),
      profileType: $checkedConvert(json, 'profile_type',
          (v) => _$enumDecodeNullable(_$ProfileTypeEnumMap, v)),
      isStaff: $checkedConvert(json, 'is_staff', (v) => v as bool?),
      isSuperuser: $checkedConvert(json, 'is_superuser', (v) => v as bool?),
      verificationStatus: $checkedConvert(json, 'verification_status',
          (v) => _$enumDecodeNullable(_$VerificationStatusEnumMap, v)),
      isBlocked: $checkedConvert(json, 'is_blocked', (v) => v as bool?),
      isEmailVerified:
          $checkedConvert(json, 'is_email_verified', (v) => v as bool?),
    );
    return val;
  }, fieldKeyMap: const {
    'creationDate': 'created_at',
    'phone': 'phone_number',
    'whatappNumber': 'whatsapp_number',
    'instagramAccount': 'instagram_account',
    'avater': 'avatar_path',
    'profileType': 'profile_type',
    'isStaff': 'is_staff',
    'isSuperuser': 'is_superuser',
    'verificationStatus': 'verification_status',
    'isBlocked': 'is_blocked',
    'isEmailVerified': 'is_email_verified'
  });
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'created_at': instance.creationDate?.toIso8601String(),
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'phone_number': instance.phone,
      'whatsapp_number': instance.whatappNumber,
      'instagram_account': instance.instagramAccount,
      'avatar_path': instance.avater,
      'profile_type': _$ProfileTypeEnumMap[instance.profileType],
      'is_staff': instance.isStaff,
      'is_superuser': instance.isSuperuser,
      'verification_status':
          _$VerificationStatusEnumMap[instance.verificationStatus],
      'is_blocked': instance.isBlocked,
      'is_email_verified': instance.isEmailVerified,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$ProfileTypeEnumMap = {
  ProfileType.Admin: 'admin',
  ProfileType.Freelancer: 'freelancer',
};

const _$VerificationStatusEnumMap = {
  VerificationStatus.Verified: 'verified',
  VerificationStatus.Undefined: 'undefined',
};
