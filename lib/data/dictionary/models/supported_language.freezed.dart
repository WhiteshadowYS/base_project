// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'supported_language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportedLanguage _$SupportedLanguageFromJson(Map<String, dynamic> json) {
  return _SupportedLanguage.fromJson(json);
}

/// @nodoc
class _$SupportedLanguageTearOff {
  const _$SupportedLanguageTearOff();

  _SupportedLanguage call(
      {String? languageCode, Language? language, bool isSelected = false}) {
    return _SupportedLanguage(
      languageCode: languageCode,
      language: language,
      isSelected: isSelected,
    );
  }

  SupportedLanguage fromJson(Map<String, Object> json) {
    return SupportedLanguage.fromJson(json);
  }
}

/// @nodoc
const $SupportedLanguage = _$SupportedLanguageTearOff();

/// @nodoc
mixin _$SupportedLanguage {
  String? get languageCode => throw _privateConstructorUsedError;
  Language? get language => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportedLanguageCopyWith<SupportedLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportedLanguageCopyWith<$Res> {
  factory $SupportedLanguageCopyWith(
          SupportedLanguage value, $Res Function(SupportedLanguage) then) =
      _$SupportedLanguageCopyWithImpl<$Res>;
  $Res call({String? languageCode, Language? language, bool isSelected});

  $LanguageCopyWith<$Res>? get language;
}

/// @nodoc
class _$SupportedLanguageCopyWithImpl<$Res>
    implements $SupportedLanguageCopyWith<$Res> {
  _$SupportedLanguageCopyWithImpl(this._value, this._then);

  final SupportedLanguage _value;
  // ignore: unused_field
  final $Res Function(SupportedLanguage) _then;

  @override
  $Res call({
    Object? languageCode = freezed,
    Object? language = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $LanguageCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $LanguageCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value));
    });
  }
}

/// @nodoc
abstract class _$SupportedLanguageCopyWith<$Res>
    implements $SupportedLanguageCopyWith<$Res> {
  factory _$SupportedLanguageCopyWith(
          _SupportedLanguage value, $Res Function(_SupportedLanguage) then) =
      __$SupportedLanguageCopyWithImpl<$Res>;
  @override
  $Res call({String? languageCode, Language? language, bool isSelected});

  @override
  $LanguageCopyWith<$Res>? get language;
}

/// @nodoc
class __$SupportedLanguageCopyWithImpl<$Res>
    extends _$SupportedLanguageCopyWithImpl<$Res>
    implements _$SupportedLanguageCopyWith<$Res> {
  __$SupportedLanguageCopyWithImpl(
      _SupportedLanguage _value, $Res Function(_SupportedLanguage) _then)
      : super(_value, (v) => _then(v as _SupportedLanguage));

  @override
  _SupportedLanguage get _value => super._value as _SupportedLanguage;

  @override
  $Res call({
    Object? languageCode = freezed,
    Object? language = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_SupportedLanguage(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_SupportedLanguage extends _SupportedLanguage {
  const _$_SupportedLanguage(
      {this.languageCode, this.language, this.isSelected = false})
      : super._();

  factory _$_SupportedLanguage.fromJson(Map<String, dynamic> json) =>
      _$_$_SupportedLanguageFromJson(json);

  @override
  final String? languageCode;
  @override
  final Language? language;
  @JsonKey(defaultValue: false)
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'SupportedLanguage(languageCode: $languageCode, language: $language, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SupportedLanguage &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(isSelected);

  @JsonKey(ignore: true)
  @override
  _$SupportedLanguageCopyWith<_SupportedLanguage> get copyWith =>
      __$SupportedLanguageCopyWithImpl<_SupportedLanguage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SupportedLanguageToJson(this);
  }
}

abstract class _SupportedLanguage extends SupportedLanguage {
  const factory _SupportedLanguage(
      {String? languageCode,
      Language? language,
      bool isSelected}) = _$_SupportedLanguage;
  const _SupportedLanguage._() : super._();

  factory _SupportedLanguage.fromJson(Map<String, dynamic> json) =
      _$_SupportedLanguage.fromJson;

  @override
  String? get languageCode => throw _privateConstructorUsedError;
  @override
  Language? get language => throw _privateConstructorUsedError;
  @override
  bool get isSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SupportedLanguageCopyWith<_SupportedLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}
