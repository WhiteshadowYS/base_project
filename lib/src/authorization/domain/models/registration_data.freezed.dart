// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'registration_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationData _$RegistrationDataFromJson(Map<String, dynamic> json) {
  return _RegistrationData.fromJson(json);
}

/// @nodoc
class _$RegistrationDataTearOff {
  const _$RegistrationDataTearOff();

  _RegistrationData call(
      {@JsonKey(name: 'email') required String email,
      @JsonKey(name: 'password') required String password,
      @JsonKey(name: 'first_name') required String firstName,
      @JsonKey(name: 'second_name') required String secondName}) {
    return _RegistrationData(
      email: email,
      password: password,
      firstName: firstName,
      secondName: secondName,
    );
  }

  RegistrationData fromJson(Map<String, Object> json) {
    return RegistrationData.fromJson(json);
  }
}

/// @nodoc
const $RegistrationData = _$RegistrationDataTearOff();

/// @nodoc
mixin _$RegistrationData {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_name')
  String get secondName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationDataCopyWith<RegistrationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationDataCopyWith<$Res> {
  factory $RegistrationDataCopyWith(
          RegistrationData value, $Res Function(RegistrationData) then) =
      _$RegistrationDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'second_name') String secondName});
}

/// @nodoc
class _$RegistrationDataCopyWithImpl<$Res>
    implements $RegistrationDataCopyWith<$Res> {
  _$RegistrationDataCopyWithImpl(this._value, this._then);

  final RegistrationData _value;
  // ignore: unused_field
  final $Res Function(RegistrationData) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? secondName = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: secondName == freezed
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegistrationDataCopyWith<$Res>
    implements $RegistrationDataCopyWith<$Res> {
  factory _$RegistrationDataCopyWith(
          _RegistrationData value, $Res Function(_RegistrationData) then) =
      __$RegistrationDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'second_name') String secondName});
}

/// @nodoc
class __$RegistrationDataCopyWithImpl<$Res>
    extends _$RegistrationDataCopyWithImpl<$Res>
    implements _$RegistrationDataCopyWith<$Res> {
  __$RegistrationDataCopyWithImpl(
      _RegistrationData _value, $Res Function(_RegistrationData) _then)
      : super(_value, (v) => _then(v as _RegistrationData));

  @override
  _RegistrationData get _value => super._value as _RegistrationData;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? secondName = freezed,
  }) {
    return _then(_RegistrationData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: secondName == freezed
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RegistrationData extends _RegistrationData {
  const _$_RegistrationData(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'second_name') required this.secondName})
      : super._();

  factory _$_RegistrationData.fromJson(Map<String, dynamic> json) =>
      _$_$_RegistrationDataFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'second_name')
  final String secondName;

  @override
  String toString() {
    return 'RegistrationData(email: $email, password: $password, firstName: $firstName, secondName: $secondName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistrationData &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.secondName, secondName) ||
                const DeepCollectionEquality()
                    .equals(other.secondName, secondName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(secondName);

  @JsonKey(ignore: true)
  @override
  _$RegistrationDataCopyWith<_RegistrationData> get copyWith =>
      __$RegistrationDataCopyWithImpl<_RegistrationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegistrationDataToJson(this);
  }
}

abstract class _RegistrationData extends RegistrationData {
  const factory _RegistrationData(
          {@JsonKey(name: 'email') required String email,
          @JsonKey(name: 'password') required String password,
          @JsonKey(name: 'first_name') required String firstName,
          @JsonKey(name: 'second_name') required String secondName}) =
      _$_RegistrationData;
  const _RegistrationData._() : super._();

  factory _RegistrationData.fromJson(Map<String, dynamic> json) =
      _$_RegistrationData.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'second_name')
  String get secondName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationDataCopyWith<_RegistrationData> get copyWith =>
      throw _privateConstructorUsedError;
}
