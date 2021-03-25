// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@JsonKey(name: 'created_at')
          DateTime? creationDate,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'username')
          String? username,
      @JsonKey(name: 'password')
          String? password,
      @JsonKey(name: 'phone_number')
          String? phone,
      @JsonKey(name: 'whatsapp_number')
          String? whatappNumber,
      @JsonKey(name: 'instagram_account')
          String? instagramAccount,
      @JsonKey(name: 'avatar_path')
          String? avater,
      @JsonKey(name: 'profile_type')
          ProfileType? profileType,
      @JsonKey(name: 'is_staff')
          bool? isStaff,
      @JsonKey(name: 'is_superuser')
          bool? isSuperuser,
      @JsonKey(name: 'verification_status')
          VerificationStatus? verificationStatus,
      @JsonKey(name: 'is_blocked')
          bool? isBlocked,
      @JsonKey(name: 'is_email_verified')
          bool? isEmailVerified}) {
    return _User(
      creationDate: creationDate,
      email: email,
      username: username,
      password: password,
      phone: phone,
      whatappNumber: whatappNumber,
      instagramAccount: instagramAccount,
      avater: avater,
      profileType: profileType,
      isStaff: isStaff,
      isSuperuser: isSuperuser,
      verificationStatus: verificationStatus,
      isBlocked: isBlocked,
      isEmailVerified: isEmailVerified,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @JsonKey(name: 'created_at')
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_number')
  String? get whatappNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_account')
  String? get instagramAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_path')
  String? get avater => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_type')
  ProfileType? get profileType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_staff')
  bool? get isStaff => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_superuser')
  bool? get isSuperuser => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_status')
  VerificationStatus? get verificationStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_blocked')
  bool? get isBlocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_email_verified')
  bool? get isEmailVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'created_at')
          DateTime? creationDate,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'username')
          String? username,
      @JsonKey(name: 'password')
          String? password,
      @JsonKey(name: 'phone_number')
          String? phone,
      @JsonKey(name: 'whatsapp_number')
          String? whatappNumber,
      @JsonKey(name: 'instagram_account')
          String? instagramAccount,
      @JsonKey(name: 'avatar_path')
          String? avater,
      @JsonKey(name: 'profile_type')
          ProfileType? profileType,
      @JsonKey(name: 'is_staff')
          bool? isStaff,
      @JsonKey(name: 'is_superuser')
          bool? isSuperuser,
      @JsonKey(name: 'verification_status')
          VerificationStatus? verificationStatus,
      @JsonKey(name: 'is_blocked')
          bool? isBlocked,
      @JsonKey(name: 'is_email_verified')
          bool? isEmailVerified});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? creationDate = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? whatappNumber = freezed,
    Object? instagramAccount = freezed,
    Object? avater = freezed,
    Object? profileType = freezed,
    Object? isStaff = freezed,
    Object? isSuperuser = freezed,
    Object? verificationStatus = freezed,
    Object? isBlocked = freezed,
    Object? isEmailVerified = freezed,
  }) {
    return _then(_value.copyWith(
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      whatappNumber: whatappNumber == freezed
          ? _value.whatappNumber
          : whatappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramAccount: instagramAccount == freezed
          ? _value.instagramAccount
          : instagramAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      avater: avater == freezed
          ? _value.avater
          : avater // ignore: cast_nullable_to_non_nullable
              as String?,
      profileType: profileType == freezed
          ? _value.profileType
          : profileType // ignore: cast_nullable_to_non_nullable
              as ProfileType?,
      isStaff: isStaff == freezed
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSuperuser: isSuperuser == freezed
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationStatus: verificationStatus == freezed
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as VerificationStatus?,
      isBlocked: isBlocked == freezed
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'created_at')
          DateTime? creationDate,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'username')
          String? username,
      @JsonKey(name: 'password')
          String? password,
      @JsonKey(name: 'phone_number')
          String? phone,
      @JsonKey(name: 'whatsapp_number')
          String? whatappNumber,
      @JsonKey(name: 'instagram_account')
          String? instagramAccount,
      @JsonKey(name: 'avatar_path')
          String? avater,
      @JsonKey(name: 'profile_type')
          ProfileType? profileType,
      @JsonKey(name: 'is_staff')
          bool? isStaff,
      @JsonKey(name: 'is_superuser')
          bool? isSuperuser,
      @JsonKey(name: 'verification_status')
          VerificationStatus? verificationStatus,
      @JsonKey(name: 'is_blocked')
          bool? isBlocked,
      @JsonKey(name: 'is_email_verified')
          bool? isEmailVerified});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? creationDate = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? whatappNumber = freezed,
    Object? instagramAccount = freezed,
    Object? avater = freezed,
    Object? profileType = freezed,
    Object? isStaff = freezed,
    Object? isSuperuser = freezed,
    Object? verificationStatus = freezed,
    Object? isBlocked = freezed,
    Object? isEmailVerified = freezed,
  }) {
    return _then(_User(
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      whatappNumber: whatappNumber == freezed
          ? _value.whatappNumber
          : whatappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramAccount: instagramAccount == freezed
          ? _value.instagramAccount
          : instagramAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      avater: avater == freezed
          ? _value.avater
          : avater // ignore: cast_nullable_to_non_nullable
              as String?,
      profileType: profileType == freezed
          ? _value.profileType
          : profileType // ignore: cast_nullable_to_non_nullable
              as ProfileType?,
      isStaff: isStaff == freezed
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSuperuser: isSuperuser == freezed
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationStatus: verificationStatus == freezed
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as VerificationStatus?,
      isBlocked: isBlocked == freezed
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {@JsonKey(name: 'created_at') this.creationDate,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'phone_number') this.phone,
      @JsonKey(name: 'whatsapp_number') this.whatappNumber,
      @JsonKey(name: 'instagram_account') this.instagramAccount,
      @JsonKey(name: 'avatar_path') this.avater,
      @JsonKey(name: 'profile_type') this.profileType,
      @JsonKey(name: 'is_staff') this.isStaff,
      @JsonKey(name: 'is_superuser') this.isSuperuser,
      @JsonKey(name: 'verification_status') this.verificationStatus,
      @JsonKey(name: 'is_blocked') this.isBlocked,
      @JsonKey(name: 'is_email_verified') this.isEmailVerified});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final DateTime? creationDate;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'phone_number')
  final String? phone;
  @override
  @JsonKey(name: 'whatsapp_number')
  final String? whatappNumber;
  @override
  @JsonKey(name: 'instagram_account')
  final String? instagramAccount;
  @override
  @JsonKey(name: 'avatar_path')
  final String? avater;
  @override
  @JsonKey(name: 'profile_type')
  final ProfileType? profileType;
  @override
  @JsonKey(name: 'is_staff')
  final bool? isStaff;
  @override
  @JsonKey(name: 'is_superuser')
  final bool? isSuperuser;
  @override
  @JsonKey(name: 'verification_status')
  final VerificationStatus? verificationStatus;
  @override
  @JsonKey(name: 'is_blocked')
  final bool? isBlocked;
  @override
  @JsonKey(name: 'is_email_verified')
  final bool? isEmailVerified;

  @override
  String toString() {
    return 'User(creationDate: $creationDate, email: $email, username: $username, password: $password, phone: $phone, whatappNumber: $whatappNumber, instagramAccount: $instagramAccount, avater: $avater, profileType: $profileType, isStaff: $isStaff, isSuperuser: $isSuperuser, verificationStatus: $verificationStatus, isBlocked: $isBlocked, isEmailVerified: $isEmailVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.whatappNumber, whatappNumber) ||
                const DeepCollectionEquality()
                    .equals(other.whatappNumber, whatappNumber)) &&
            (identical(other.instagramAccount, instagramAccount) ||
                const DeepCollectionEquality()
                    .equals(other.instagramAccount, instagramAccount)) &&
            (identical(other.avater, avater) ||
                const DeepCollectionEquality().equals(other.avater, avater)) &&
            (identical(other.profileType, profileType) ||
                const DeepCollectionEquality()
                    .equals(other.profileType, profileType)) &&
            (identical(other.isStaff, isStaff) ||
                const DeepCollectionEquality()
                    .equals(other.isStaff, isStaff)) &&
            (identical(other.isSuperuser, isSuperuser) ||
                const DeepCollectionEquality()
                    .equals(other.isSuperuser, isSuperuser)) &&
            (identical(other.verificationStatus, verificationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.verificationStatus, verificationStatus)) &&
            (identical(other.isBlocked, isBlocked) ||
                const DeepCollectionEquality()
                    .equals(other.isBlocked, isBlocked)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(whatappNumber) ^
      const DeepCollectionEquality().hash(instagramAccount) ^
      const DeepCollectionEquality().hash(avater) ^
      const DeepCollectionEquality().hash(profileType) ^
      const DeepCollectionEquality().hash(isStaff) ^
      const DeepCollectionEquality().hash(isSuperuser) ^
      const DeepCollectionEquality().hash(verificationStatus) ^
      const DeepCollectionEquality().hash(isBlocked) ^
      const DeepCollectionEquality().hash(isEmailVerified);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'created_at')
          DateTime? creationDate,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'username')
          String? username,
      @JsonKey(name: 'password')
          String? password,
      @JsonKey(name: 'phone_number')
          String? phone,
      @JsonKey(name: 'whatsapp_number')
          String? whatappNumber,
      @JsonKey(name: 'instagram_account')
          String? instagramAccount,
      @JsonKey(name: 'avatar_path')
          String? avater,
      @JsonKey(name: 'profile_type')
          ProfileType? profileType,
      @JsonKey(name: 'is_staff')
          bool? isStaff,
      @JsonKey(name: 'is_superuser')
          bool? isSuperuser,
      @JsonKey(name: 'verification_status')
          VerificationStatus? verificationStatus,
      @JsonKey(name: 'is_blocked')
          bool? isBlocked,
      @JsonKey(name: 'is_email_verified')
          bool? isEmailVerified}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'created_at')
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_number')
  String? get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'whatsapp_number')
  String? get whatappNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'instagram_account')
  String? get instagramAccount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar_path')
  String? get avater => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'profile_type')
  ProfileType? get profileType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_staff')
  bool? get isStaff => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_superuser')
  bool? get isSuperuser => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'verification_status')
  VerificationStatus? get verificationStatus =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_blocked')
  bool? get isBlocked => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_email_verified')
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
