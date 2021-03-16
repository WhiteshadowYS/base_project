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
      {required HomePageLanguage homePage,
      required LoginPageLanguage loginPage,
      required GlobalLanguage global,
      String? name}) {
    return _Language(
      homePage: homePage,
      loginPage: loginPage,
      global: global,
      name: name,
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
  HomePageLanguage get homePage => throw _privateConstructorUsedError;
  LoginPageLanguage get loginPage => throw _privateConstructorUsedError;
  GlobalLanguage get global => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

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
      {HomePageLanguage homePage,
      LoginPageLanguage loginPage,
      GlobalLanguage global,
      String? name});

  $HomePageLanguageCopyWith<$Res> get homePage;
  $LoginPageLanguageCopyWith<$Res> get loginPage;
  $GlobalLanguageCopyWith<$Res> get global;
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

  @override
  $Res call({
    Object? homePage = freezed,
    Object? loginPage = freezed,
    Object? global = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      homePage: homePage == freezed
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as HomePageLanguage,
      loginPage: loginPage == freezed
          ? _value.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPageLanguage,
      global: global == freezed
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as GlobalLanguage,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $HomePageLanguageCopyWith<$Res> get homePage {
    return $HomePageLanguageCopyWith<$Res>(_value.homePage, (value) {
      return _then(_value.copyWith(homePage: value));
    });
  }

  @override
  $LoginPageLanguageCopyWith<$Res> get loginPage {
    return $LoginPageLanguageCopyWith<$Res>(_value.loginPage, (value) {
      return _then(_value.copyWith(loginPage: value));
    });
  }

  @override
  $GlobalLanguageCopyWith<$Res> get global {
    return $GlobalLanguageCopyWith<$Res>(_value.global, (value) {
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
      {HomePageLanguage homePage,
      LoginPageLanguage loginPage,
      GlobalLanguage global,
      String? name});

  @override
  $HomePageLanguageCopyWith<$Res> get homePage;
  @override
  $LoginPageLanguageCopyWith<$Res> get loginPage;
  @override
  $GlobalLanguageCopyWith<$Res> get global;
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
    Object? homePage = freezed,
    Object? loginPage = freezed,
    Object? global = freezed,
    Object? name = freezed,
  }) {
    return _then(_Language(
      homePage: homePage == freezed
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as HomePageLanguage,
      loginPage: loginPage == freezed
          ? _value.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPageLanguage,
      global: global == freezed
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as GlobalLanguage,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_Language implements _Language {
  const _$_Language(
      {required this.homePage,
      required this.loginPage,
      required this.global,
      this.name});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageFromJson(json);

  @override
  final HomePageLanguage homePage;
  @override
  final LoginPageLanguage loginPage;
  @override
  final GlobalLanguage global;
  @override
  final String? name;

  @override
  String toString() {
    return 'Language(homePage: $homePage, loginPage: $loginPage, global: $global, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Language &&
            (identical(other.homePage, homePage) ||
                const DeepCollectionEquality()
                    .equals(other.homePage, homePage)) &&
            (identical(other.loginPage, loginPage) ||
                const DeepCollectionEquality()
                    .equals(other.loginPage, loginPage)) &&
            (identical(other.global, global) ||
                const DeepCollectionEquality().equals(other.global, global)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homePage) ^
      const DeepCollectionEquality().hash(loginPage) ^
      const DeepCollectionEquality().hash(global) ^
      const DeepCollectionEquality().hash(name);

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
      {required HomePageLanguage homePage,
      required LoginPageLanguage loginPage,
      required GlobalLanguage global,
      String? name}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  HomePageLanguage get homePage => throw _privateConstructorUsedError;
  @override
  LoginPageLanguage get loginPage => throw _privateConstructorUsedError;
  @override
  GlobalLanguage get global => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageCopyWith<_Language> get copyWith =>
      throw _privateConstructorUsedError;
}
