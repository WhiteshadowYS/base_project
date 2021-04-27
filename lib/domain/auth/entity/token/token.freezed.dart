// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
class _$TokenTearOff {
  const _$TokenTearOff();

  _Token call(
      {@JsonKey(name: 'token') String? token,
      @JsonKey(name: 'expiry') DateTime? expiry}) {
    return _Token(
      token: token,
      expiry: expiry,
    );
  }

  Token fromJson(Map<String, Object> json) {
    return Token.fromJson(json);
  }
}

/// @nodoc
const $Token = _$TokenTearOff();

/// @nodoc
mixin _$Token {
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry')
  DateTime? get expiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'token') String? token,
      @JsonKey(name: 'expiry') DateTime? expiry});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: expiry == freezed
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) then) =
      __$TokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'token') String? token,
      @JsonKey(name: 'expiry') DateTime? expiry});
}

/// @nodoc
class __$TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(_Token _value, $Res Function(_Token) _then)
      : super(_value, (v) => _then(v as _Token));

  @override
  _Token get _value => super._value as _Token;

  @override
  $Res call({
    Object? token = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_Token(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: expiry == freezed
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_Token implements _Token {
  const _$_Token(
      {@JsonKey(name: 'token') this.token,
      @JsonKey(name: 'expiry') this.expiry});

  factory _$_Token.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'expiry')
  final DateTime? expiry;

  @override
  String toString() {
    return 'Token(token: $token, expiry: $expiry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Token &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.expiry, expiry) ||
                const DeepCollectionEquality().equals(other.expiry, expiry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(expiry);

  @JsonKey(ignore: true)
  @override
  _$TokenCopyWith<_Token> get copyWith =>
      __$TokenCopyWithImpl<_Token>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenToJson(this);
  }
}

abstract class _Token implements Token {
  const factory _Token(
      {@JsonKey(name: 'token') String? token,
      @JsonKey(name: 'expiry') DateTime? expiry}) = _$_Token;

  factory _Token.fromJson(Map<String, dynamic> json) = _$_Token.fromJson;

  @override
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expiry')
  DateTime? get expiry => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TokenCopyWith<_Token> get copyWith => throw _privateConstructorUsedError;
}
