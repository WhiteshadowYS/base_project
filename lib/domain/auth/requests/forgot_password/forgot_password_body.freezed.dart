// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forgot_password_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgotPasswordBody _$ForgotPasswordBodyFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordBody.fromJson(json);
}

/// @nodoc
class _$ForgotPasswordBodyTearOff {
  const _$ForgotPasswordBodyTearOff();

  _ForgotPasswordBody call({@JsonKey(name: 'email') String? email}) {
    return _ForgotPasswordBody(
      email: email,
    );
  }

  ForgotPasswordBody fromJson(Map<String, Object> json) {
    return ForgotPasswordBody.fromJson(json);
  }
}

/// @nodoc
const $ForgotPasswordBody = _$ForgotPasswordBodyTearOff();

/// @nodoc
mixin _$ForgotPasswordBody {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordBodyCopyWith<ForgotPasswordBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordBodyCopyWith<$Res> {
  factory $ForgotPasswordBodyCopyWith(
          ForgotPasswordBody value, $Res Function(ForgotPasswordBody) then) =
      _$ForgotPasswordBodyCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$ForgotPasswordBodyCopyWithImpl<$Res>
    implements $ForgotPasswordBodyCopyWith<$Res> {
  _$ForgotPasswordBodyCopyWithImpl(this._value, this._then);

  final ForgotPasswordBody _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordBody) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ForgotPasswordBodyCopyWith<$Res>
    implements $ForgotPasswordBodyCopyWith<$Res> {
  factory _$ForgotPasswordBodyCopyWith(
          _ForgotPasswordBody value, $Res Function(_ForgotPasswordBody) then) =
      __$ForgotPasswordBodyCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$ForgotPasswordBodyCopyWithImpl<$Res>
    extends _$ForgotPasswordBodyCopyWithImpl<$Res>
    implements _$ForgotPasswordBodyCopyWith<$Res> {
  __$ForgotPasswordBodyCopyWithImpl(
      _ForgotPasswordBody _value, $Res Function(_ForgotPasswordBody) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordBody));

  @override
  _ForgotPasswordBody get _value => super._value as _ForgotPasswordBody;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_ForgotPasswordBody(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_ForgotPasswordBody extends _ForgotPasswordBody {
  const _$_ForgotPasswordBody({@JsonKey(name: 'email') this.email}) : super._();

  factory _$_ForgotPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$_$_ForgotPasswordBodyFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'ForgotPasswordBody(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgotPasswordBody &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordBodyCopyWith<_ForgotPasswordBody> get copyWith =>
      __$ForgotPasswordBodyCopyWithImpl<_ForgotPasswordBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ForgotPasswordBodyToJson(this);
  }
}

abstract class _ForgotPasswordBody extends ForgotPasswordBody {
  const factory _ForgotPasswordBody({@JsonKey(name: 'email') String? email}) =
      _$_ForgotPasswordBody;
  const _ForgotPasswordBody._() : super._();

  factory _ForgotPasswordBody.fromJson(Map<String, dynamic> json) =
      _$_ForgotPasswordBody.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForgotPasswordBodyCopyWith<_ForgotPasswordBody> get copyWith =>
      throw _privateConstructorUsedError;
}
