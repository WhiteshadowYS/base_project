// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
class _$LanguageTearOff {
  const _$LanguageTearOff();

  _Language call(
      {@JsonKey(name: 'code') required String code,
      @JsonKey(name: 'login') required LanguageLogin login,
      @JsonKey(name: 'global') required LanguageGlobal global}) {
    return _Language(
      code: code,
      login: login,
      global: global,
    );
  }

  Language fromJson(Map<String, Object> json) {
    return Language.fromJson(json);
  }
}

/// @nodoc
const $Language = _$LanguageTearOff();

/// @nodoc
mixin _$Language {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  LanguageLogin get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'global')
  LanguageGlobal get global => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'login') LanguageLogin login,
      @JsonKey(name: 'global') LanguageGlobal global});

  $LanguageLoginCopyWith<$Res> get login;
  $LanguageGlobalCopyWith<$Res> get global;
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? login = freezed,
    Object? global = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as LanguageLogin,
      global: global == freezed
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as LanguageGlobal,
    ));
  }

  @override
  $LanguageLoginCopyWith<$Res> get login {
    return $LanguageLoginCopyWith<$Res>(_value.login, (value) {
      return _then(_value.copyWith(login: value));
    });
  }

  @override
  $LanguageGlobalCopyWith<$Res> get global {
    return $LanguageGlobalCopyWith<$Res>(_value.global, (value) {
      return _then(_value.copyWith(global: value));
    });
  }
}

/// @nodoc
abstract class _$LanguageCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$LanguageCopyWith(_Language value, $Res Function(_Language) then) =
      __$LanguageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'login') LanguageLogin login,
      @JsonKey(name: 'global') LanguageGlobal global});

  @override
  $LanguageLoginCopyWith<$Res> get login;
  @override
  $LanguageGlobalCopyWith<$Res> get global;
}

/// @nodoc
class __$LanguageCopyWithImpl<$Res> extends _$LanguageCopyWithImpl<$Res>
    implements _$LanguageCopyWith<$Res> {
  __$LanguageCopyWithImpl(_Language _value, $Res Function(_Language) _then)
      : super(_value, (v) => _then(v as _Language));

  @override
  _Language get _value => super._value as _Language;

  @override
  $Res call({
    Object? code = freezed,
    Object? login = freezed,
    Object? global = freezed,
  }) {
    return _then(_Language(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as LanguageLogin,
      global: global == freezed
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as LanguageGlobal,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_Language implements _Language {
  const _$_Language(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'login') required this.login,
      @JsonKey(name: 'global') required this.global});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'login')
  final LanguageLogin login;
  @override
  @JsonKey(name: 'global')
  final LanguageGlobal global;

  @override
  String toString() {
    return 'Language(code: $code, login: $login, global: $global)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Language &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.global, global) ||
                const DeepCollectionEquality().equals(other.global, global)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(global);

  @JsonKey(ignore: true)
  @override
  _$LanguageCopyWith<_Language> get copyWith =>
      __$LanguageCopyWithImpl<_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageToJson(this);
  }
}

abstract class _Language implements Language {
  const factory _Language(
      {@JsonKey(name: 'code') required String code,
      @JsonKey(name: 'login') required LanguageLogin login,
      @JsonKey(name: 'global') required LanguageGlobal global}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'login')
  LanguageLogin get login => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'global')
  LanguageGlobal get global => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageCopyWith<_Language> get copyWith =>
      throw _privateConstructorUsedError;
}
