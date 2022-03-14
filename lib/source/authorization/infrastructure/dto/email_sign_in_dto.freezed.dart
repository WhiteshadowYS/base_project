// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_sign_in_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailSignInDto _$EmailSignInDtoFromJson(Map<String, dynamic> json) {
  return _EmailSignInDto.fromJson(json);
}

/// @nodoc
class _$EmailSignInDtoTearOff {
  const _$EmailSignInDtoTearOff();

  _EmailSignInDto call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password}) {
    return _EmailSignInDto(
      email: email,
      password: password,
    );
  }

  EmailSignInDto fromJson(Map<String, Object?> json) {
    return EmailSignInDto.fromJson(json);
  }
}

/// @nodoc
const $EmailSignInDto = _$EmailSignInDtoTearOff();

/// @nodoc
mixin _$EmailSignInDto {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailSignInDtoCopyWith<EmailSignInDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSignInDtoCopyWith<$Res> {
  factory $EmailSignInDtoCopyWith(
          EmailSignInDto value, $Res Function(EmailSignInDto) then) =
      _$EmailSignInDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$EmailSignInDtoCopyWithImpl<$Res>
    implements $EmailSignInDtoCopyWith<$Res> {
  _$EmailSignInDtoCopyWithImpl(this._value, this._then);

  final EmailSignInDto _value;
  // ignore: unused_field
  final $Res Function(EmailSignInDto) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EmailSignInDtoCopyWith<$Res>
    implements $EmailSignInDtoCopyWith<$Res> {
  factory _$EmailSignInDtoCopyWith(
          _EmailSignInDto value, $Res Function(_EmailSignInDto) then) =
      __$EmailSignInDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$EmailSignInDtoCopyWithImpl<$Res>
    extends _$EmailSignInDtoCopyWithImpl<$Res>
    implements _$EmailSignInDtoCopyWith<$Res> {
  __$EmailSignInDtoCopyWithImpl(
      _EmailSignInDto _value, $Res Function(_EmailSignInDto) _then)
      : super(_value, (v) => _then(v as _EmailSignInDto));

  @override
  _EmailSignInDto get _value => super._value as _EmailSignInDto;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_EmailSignInDto(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_EmailSignInDto extends _EmailSignInDto {
  const _$_EmailSignInDto(
      {@JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password})
      : super._();

  factory _$_EmailSignInDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmailSignInDtoFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'EmailSignInDto(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailSignInDto &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$EmailSignInDtoCopyWith<_EmailSignInDto> get copyWith =>
      __$EmailSignInDtoCopyWithImpl<_EmailSignInDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailSignInDtoToJson(this);
  }
}

abstract class _EmailSignInDto extends EmailSignInDto {
  const factory _EmailSignInDto(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password}) = _$_EmailSignInDto;
  const _EmailSignInDto._() : super._();

  factory _EmailSignInDto.fromJson(Map<String, dynamic> json) =
      _$_EmailSignInDto.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$EmailSignInDtoCopyWith<_EmailSignInDto> get copyWith =>
      throw _privateConstructorUsedError;
}
