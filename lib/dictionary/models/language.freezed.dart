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
      {String? name,
      HomePageLanguage? homePage,
      LoginPageLanguage? loginPage,
      GlobalLanguage? global}) {
    return _Language(
      name: name,
      homePage: homePage,
      loginPage: loginPage,
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
  String? get name => throw _privateConstructorUsedError;
  HomePageLanguage? get homePage => throw _privateConstructorUsedError;
  LoginPageLanguage? get loginPage => throw _privateConstructorUsedError;
  GlobalLanguage? get global => throw _privateConstructorUsedError;

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
      {String? name,
      HomePageLanguage? homePage,
      LoginPageLanguage? loginPage,
      GlobalLanguage? global});

  $HomePageLanguageCopyWith<$Res>? get homePage;
  $LoginPageLanguageCopyWith<$Res>? get loginPage;
  $GlobalLanguageCopyWith<$Res>? get global;
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? homePage = freezed,
    Object? loginPage = freezed,
    Object? global = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      homePage: homePage == freezed
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as HomePageLanguage?,
      loginPage: loginPage == freezed
          ? _value.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPageLanguage?,
      global: global == freezed
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as GlobalLanguage?,
    ));
  }

  @override
  $HomePageLanguageCopyWith<$Res>? get homePage {
    if (_value.homePage == null) {
      return null;
    }

    return $HomePageLanguageCopyWith<$Res>(_value.homePage!, (value) {
      return _then(_value.copyWith(homePage: value));
    });
  }

  @override
  $LoginPageLanguageCopyWith<$Res>? get loginPage {
    if (_value.loginPage == null) {
      return null;
    }

    return $LoginPageLanguageCopyWith<$Res>(_value.loginPage!, (value) {
      return _then(_value.copyWith(loginPage: value));
    });
  }

  @override
  $GlobalLanguageCopyWith<$Res>? get global {
    if (_value.global == null) {
      return null;
    }

    return $GlobalLanguageCopyWith<$Res>(_value.global!, (value) {
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
      {String? name,
      HomePageLanguage? homePage,
      LoginPageLanguage? loginPage,
      GlobalLanguage? global});

  @override
  $HomePageLanguageCopyWith<$Res>? get homePage;
  @override
  $LoginPageLanguageCopyWith<$Res>? get loginPage;
  @override
  $GlobalLanguageCopyWith<$Res>? get global;
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
    Object? name = freezed,
    Object? homePage = freezed,
    Object? loginPage = freezed,
    Object? global = freezed,
  }) {
    return _then(_Language(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      homePage: homePage == freezed
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as HomePageLanguage?,
      loginPage: loginPage == freezed
          ? _value.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPageLanguage?,
      global: global == freezed
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as GlobalLanguage?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Language implements _Language {
  const _$_Language({this.name, this.homePage, this.loginPage, this.global});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageFromJson(json);

  @override
  final String? name;
  @override
  final HomePageLanguage? homePage;
  @override
  final LoginPageLanguage? loginPage;
  @override
  final GlobalLanguage? global;

  @override
  String toString() {
    return 'Language(name: $name, homePage: $homePage, loginPage: $loginPage, global: $global)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Language &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.homePage, homePage) ||
                const DeepCollectionEquality()
                    .equals(other.homePage, homePage)) &&
            (identical(other.loginPage, loginPage) ||
                const DeepCollectionEquality()
                    .equals(other.loginPage, loginPage)) &&
            (identical(other.global, global) ||
                const DeepCollectionEquality().equals(other.global, global)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(homePage) ^
      const DeepCollectionEquality().hash(loginPage) ^
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
      {String? name,
      HomePageLanguage? homePage,
      LoginPageLanguage? loginPage,
      GlobalLanguage? global}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  HomePageLanguage? get homePage => throw _privateConstructorUsedError;
  @override
  LoginPageLanguage? get loginPage => throw _privateConstructorUsedError;
  @override
  GlobalLanguage? get global => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageCopyWith<_Language> get copyWith =>
      throw _privateConstructorUsedError;
}
