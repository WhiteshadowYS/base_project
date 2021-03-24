// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageLogin _$LanguageLoginFromJson(Map<String, dynamic> json) {
  return _LanguageLogin.fromJson(json);
}

/// @nodoc
class _$LanguageLoginTearOff {
  const _$LanguageLoginTearOff();

  _LanguageLogin call(
      {@JsonKey(name: 'email_hint') String? emailHint,
      @JsonKey(name: 'password_hint') String? passwordHint,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'button') String? button}) {
    return _LanguageLogin(
      emailHint: emailHint,
      passwordHint: passwordHint,
      title: title,
      button: button,
    );
  }

  LanguageLogin fromJson(Map<String, Object> json) {
    return LanguageLogin.fromJson(json);
  }
}

/// @nodoc
const $LanguageLogin = _$LanguageLoginTearOff();

/// @nodoc
mixin _$LanguageLogin {
  @JsonKey(name: 'email_hint')
  String? get emailHint => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_hint')
  String? get passwordHint => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'button')
  String? get button => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageLoginCopyWith<LanguageLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageLoginCopyWith<$Res> {
  factory $LanguageLoginCopyWith(
          LanguageLogin value, $Res Function(LanguageLogin) then) =
      _$LanguageLoginCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'email_hint') String? emailHint,
      @JsonKey(name: 'password_hint') String? passwordHint,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'button') String? button});
}

/// @nodoc
class _$LanguageLoginCopyWithImpl<$Res>
    implements $LanguageLoginCopyWith<$Res> {
  _$LanguageLoginCopyWithImpl(this._value, this._then);

  final LanguageLogin _value;
  // ignore: unused_field
  final $Res Function(LanguageLogin) _then;

  @override
  $Res call({
    Object? emailHint = freezed,
    Object? passwordHint = freezed,
    Object? title = freezed,
    Object? button = freezed,
  }) {
    return _then(_value.copyWith(
      emailHint: emailHint == freezed
          ? _value.emailHint
          : emailHint // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordHint: passwordHint == freezed
          ? _value.passwordHint
          : passwordHint // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      button: button == freezed
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageLoginCopyWith<$Res>
    implements $LanguageLoginCopyWith<$Res> {
  factory _$LanguageLoginCopyWith(
          _LanguageLogin value, $Res Function(_LanguageLogin) then) =
      __$LanguageLoginCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'email_hint') String? emailHint,
      @JsonKey(name: 'password_hint') String? passwordHint,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'button') String? button});
}

/// @nodoc
class __$LanguageLoginCopyWithImpl<$Res>
    extends _$LanguageLoginCopyWithImpl<$Res>
    implements _$LanguageLoginCopyWith<$Res> {
  __$LanguageLoginCopyWithImpl(
      _LanguageLogin _value, $Res Function(_LanguageLogin) _then)
      : super(_value, (v) => _then(v as _LanguageLogin));

  @override
  _LanguageLogin get _value => super._value as _LanguageLogin;

  @override
  $Res call({
    Object? emailHint = freezed,
    Object? passwordHint = freezed,
    Object? title = freezed,
    Object? button = freezed,
  }) {
    return _then(_LanguageLogin(
      emailHint: emailHint == freezed
          ? _value.emailHint
          : emailHint // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordHint: passwordHint == freezed
          ? _value.passwordHint
          : passwordHint // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      button: button == freezed
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguageLogin implements _LanguageLogin {
  const _$_LanguageLogin(
      {@JsonKey(name: 'email_hint') this.emailHint,
      @JsonKey(name: 'password_hint') this.passwordHint,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'button') this.button});

  factory _$_LanguageLogin.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageLoginFromJson(json);

  @override
  @JsonKey(name: 'email_hint')
  final String? emailHint;
  @override
  @JsonKey(name: 'password_hint')
  final String? passwordHint;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'button')
  final String? button;

  @override
  String toString() {
    return 'LanguageLogin(emailHint: $emailHint, passwordHint: $passwordHint, title: $title, button: $button)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageLogin &&
            (identical(other.emailHint, emailHint) ||
                const DeepCollectionEquality()
                    .equals(other.emailHint, emailHint)) &&
            (identical(other.passwordHint, passwordHint) ||
                const DeepCollectionEquality()
                    .equals(other.passwordHint, passwordHint)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.button, button) ||
                const DeepCollectionEquality().equals(other.button, button)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailHint) ^
      const DeepCollectionEquality().hash(passwordHint) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(button);

  @JsonKey(ignore: true)
  @override
  _$LanguageLoginCopyWith<_LanguageLogin> get copyWith =>
      __$LanguageLoginCopyWithImpl<_LanguageLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageLoginToJson(this);
  }
}

abstract class _LanguageLogin implements LanguageLogin {
  const factory _LanguageLogin(
      {@JsonKey(name: 'email_hint') String? emailHint,
      @JsonKey(name: 'password_hint') String? passwordHint,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'button') String? button}) = _$_LanguageLogin;

  factory _LanguageLogin.fromJson(Map<String, dynamic> json) =
      _$_LanguageLogin.fromJson;

  @override
  @JsonKey(name: 'email_hint')
  String? get emailHint => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password_hint')
  String? get passwordHint => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'button')
  String? get button => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageLoginCopyWith<_LanguageLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
