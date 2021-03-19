// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_page_language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginPageLanguage _$LoginPageLanguageFromJson(Map<String, dynamic> json) {
  return _LoginPageLanguage.fromJson(json);
}

/// @nodoc
class _$LoginPageLanguageTearOff {
  const _$LoginPageLanguageTearOff();

  _LoginPageLanguage call(
      {String? title, String? emailHint, String? passwordHint}) {
    return _LoginPageLanguage(
      title: title,
      emailHint: emailHint,
      passwordHint: passwordHint,
    );
  }

  LoginPageLanguage fromJson(Map<String, Object> json) {
    return LoginPageLanguage.fromJson(json);
  }
}

/// @nodoc
const $LoginPageLanguage = _$LoginPageLanguageTearOff();

/// @nodoc
mixin _$LoginPageLanguage {
  String? get title => throw _privateConstructorUsedError;
  String? get emailHint => throw _privateConstructorUsedError;
  String? get passwordHint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPageLanguageCopyWith<LoginPageLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageLanguageCopyWith<$Res> {
  factory $LoginPageLanguageCopyWith(
          LoginPageLanguage value, $Res Function(LoginPageLanguage) then) =
      _$LoginPageLanguageCopyWithImpl<$Res>;
  $Res call({String? title, String? emailHint, String? passwordHint});
}

/// @nodoc
class _$LoginPageLanguageCopyWithImpl<$Res>
    implements $LoginPageLanguageCopyWith<$Res> {
  _$LoginPageLanguageCopyWithImpl(this._value, this._then);

  final LoginPageLanguage _value;
  // ignore: unused_field
  final $Res Function(LoginPageLanguage) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? emailHint = freezed,
    Object? passwordHint = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      emailHint: emailHint == freezed
          ? _value.emailHint
          : emailHint // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordHint: passwordHint == freezed
          ? _value.passwordHint
          : passwordHint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LoginPageLanguageCopyWith<$Res>
    implements $LoginPageLanguageCopyWith<$Res> {
  factory _$LoginPageLanguageCopyWith(
          _LoginPageLanguage value, $Res Function(_LoginPageLanguage) then) =
      __$LoginPageLanguageCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? emailHint, String? passwordHint});
}

/// @nodoc
class __$LoginPageLanguageCopyWithImpl<$Res>
    extends _$LoginPageLanguageCopyWithImpl<$Res>
    implements _$LoginPageLanguageCopyWith<$Res> {
  __$LoginPageLanguageCopyWithImpl(
      _LoginPageLanguage _value, $Res Function(_LoginPageLanguage) _then)
      : super(_value, (v) => _then(v as _LoginPageLanguage));

  @override
  _LoginPageLanguage get _value => super._value as _LoginPageLanguage;

  @override
  $Res call({
    Object? title = freezed,
    Object? emailHint = freezed,
    Object? passwordHint = freezed,
  }) {
    return _then(_LoginPageLanguage(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      emailHint: emailHint == freezed
          ? _value.emailHint
          : emailHint // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordHint: passwordHint == freezed
          ? _value.passwordHint
          : passwordHint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoginPageLanguage implements _LoginPageLanguage {
  const _$_LoginPageLanguage({this.title, this.emailHint, this.passwordHint});

  factory _$_LoginPageLanguage.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginPageLanguageFromJson(json);

  @override
  final String? title;
  @override
  final String? emailHint;
  @override
  final String? passwordHint;

  @override
  String toString() {
    return 'LoginPageLanguage(title: $title, emailHint: $emailHint, passwordHint: $passwordHint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginPageLanguage &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.emailHint, emailHint) ||
                const DeepCollectionEquality()
                    .equals(other.emailHint, emailHint)) &&
            (identical(other.passwordHint, passwordHint) ||
                const DeepCollectionEquality()
                    .equals(other.passwordHint, passwordHint)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(emailHint) ^
      const DeepCollectionEquality().hash(passwordHint);

  @JsonKey(ignore: true)
  @override
  _$LoginPageLanguageCopyWith<_LoginPageLanguage> get copyWith =>
      __$LoginPageLanguageCopyWithImpl<_LoginPageLanguage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginPageLanguageToJson(this);
  }
}

abstract class _LoginPageLanguage implements LoginPageLanguage {
  const factory _LoginPageLanguage(
      {String? title,
      String? emailHint,
      String? passwordHint}) = _$_LoginPageLanguage;

  factory _LoginPageLanguage.fromJson(Map<String, dynamic> json) =
      _$_LoginPageLanguage.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get emailHint => throw _privateConstructorUsedError;
  @override
  String? get passwordHint => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginPageLanguageCopyWith<_LoginPageLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}
