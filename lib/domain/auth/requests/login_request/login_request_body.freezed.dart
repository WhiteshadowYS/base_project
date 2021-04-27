// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequestBody _$LoginRequestBodyFromJson(Map<String, dynamic> json) {
  return _LoginRequestBody.fromJson(json);
}

/// @nodoc
class _$LoginRequestBodyTearOff {
  const _$LoginRequestBodyTearOff();

  _LoginRequestBody call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password}) {
    return _LoginRequestBody(
      email: email,
      password: password,
    );
  }

  LoginRequestBody fromJson(Map<String, Object> json) {
    return LoginRequestBody.fromJson(json);
  }
}

/// @nodoc
const $LoginRequestBody = _$LoginRequestBodyTearOff();

/// @nodoc
mixin _$LoginRequestBody {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestBodyCopyWith<LoginRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestBodyCopyWith<$Res> {
  factory $LoginRequestBodyCopyWith(
          LoginRequestBody value, $Res Function(LoginRequestBody) then) =
      _$LoginRequestBodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$LoginRequestBodyCopyWithImpl<$Res>
    implements $LoginRequestBodyCopyWith<$Res> {
  _$LoginRequestBodyCopyWithImpl(this._value, this._then);

  final LoginRequestBody _value;
  // ignore: unused_field
  final $Res Function(LoginRequestBody) _then;

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
abstract class _$LoginRequestBodyCopyWith<$Res>
    implements $LoginRequestBodyCopyWith<$Res> {
  factory _$LoginRequestBodyCopyWith(
          _LoginRequestBody value, $Res Function(_LoginRequestBody) then) =
      __$LoginRequestBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$LoginRequestBodyCopyWithImpl<$Res>
    extends _$LoginRequestBodyCopyWithImpl<$Res>
    implements _$LoginRequestBodyCopyWith<$Res> {
  __$LoginRequestBodyCopyWithImpl(
      _LoginRequestBody _value, $Res Function(_LoginRequestBody) _then)
      : super(_value, (v) => _then(v as _LoginRequestBody));

  @override
  _LoginRequestBody get _value => super._value as _LoginRequestBody;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_LoginRequestBody(
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

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LoginRequestBody extends _LoginRequestBody {
  const _$_LoginRequestBody(
      {@JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password})
      : super._();

  factory _$_LoginRequestBody.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginRequestBodyFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'LoginRequestBody(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginRequestBody &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginRequestBodyCopyWith<_LoginRequestBody> get copyWith =>
      __$LoginRequestBodyCopyWithImpl<_LoginRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginRequestBodyToJson(this);
  }
}

abstract class _LoginRequestBody extends LoginRequestBody {
  const factory _LoginRequestBody(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password}) = _$_LoginRequestBody;
  const _LoginRequestBody._() : super._();

  factory _LoginRequestBody.fromJson(Map<String, dynamic> json) =
      _$_LoginRequestBody.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginRequestBodyCopyWith<_LoginRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
