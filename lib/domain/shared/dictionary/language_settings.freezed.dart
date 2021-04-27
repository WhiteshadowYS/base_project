// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageSettings _$LanguageSettingsFromJson(Map<String, dynamic> json) {
  return _LanguageSettings.fromJson(json);
}

/// @nodoc
class _$LanguageSettingsTearOff {
  const _$LanguageSettingsTearOff();

  _LanguageSettings call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'choose_language') String? chooseLanguage}) {
    return _LanguageSettings(
      title: title,
      chooseLanguage: chooseLanguage,
    );
  }

  LanguageSettings fromJson(Map<String, Object> json) {
    return LanguageSettings.fromJson(json);
  }
}

/// @nodoc
const $LanguageSettings = _$LanguageSettingsTearOff();

/// @nodoc
mixin _$LanguageSettings {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'choose_language')
  String? get chooseLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageSettingsCopyWith<LanguageSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageSettingsCopyWith<$Res> {
  factory $LanguageSettingsCopyWith(
          LanguageSettings value, $Res Function(LanguageSettings) then) =
      _$LanguageSettingsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'choose_language') String? chooseLanguage});
}

/// @nodoc
class _$LanguageSettingsCopyWithImpl<$Res>
    implements $LanguageSettingsCopyWith<$Res> {
  _$LanguageSettingsCopyWithImpl(this._value, this._then);

  final LanguageSettings _value;
  // ignore: unused_field
  final $Res Function(LanguageSettings) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? chooseLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      chooseLanguage: chooseLanguage == freezed
          ? _value.chooseLanguage
          : chooseLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageSettingsCopyWith<$Res>
    implements $LanguageSettingsCopyWith<$Res> {
  factory _$LanguageSettingsCopyWith(
          _LanguageSettings value, $Res Function(_LanguageSettings) then) =
      __$LanguageSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'choose_language') String? chooseLanguage});
}

/// @nodoc
class __$LanguageSettingsCopyWithImpl<$Res>
    extends _$LanguageSettingsCopyWithImpl<$Res>
    implements _$LanguageSettingsCopyWith<$Res> {
  __$LanguageSettingsCopyWithImpl(
      _LanguageSettings _value, $Res Function(_LanguageSettings) _then)
      : super(_value, (v) => _then(v as _LanguageSettings));

  @override
  _LanguageSettings get _value => super._value as _LanguageSettings;

  @override
  $Res call({
    Object? title = freezed,
    Object? chooseLanguage = freezed,
  }) {
    return _then(_LanguageSettings(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      chooseLanguage: chooseLanguage == freezed
          ? _value.chooseLanguage
          : chooseLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguageSettings implements _LanguageSettings {
  const _$_LanguageSettings(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'choose_language') this.chooseLanguage});

  factory _$_LanguageSettings.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageSettingsFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'choose_language')
  final String? chooseLanguage;

  @override
  String toString() {
    return 'LanguageSettings(title: $title, chooseLanguage: $chooseLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageSettings &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.chooseLanguage, chooseLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.chooseLanguage, chooseLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(chooseLanguage);

  @JsonKey(ignore: true)
  @override
  _$LanguageSettingsCopyWith<_LanguageSettings> get copyWith =>
      __$LanguageSettingsCopyWithImpl<_LanguageSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageSettingsToJson(this);
  }
}

abstract class _LanguageSettings implements LanguageSettings {
  const factory _LanguageSettings(
          {@JsonKey(name: 'title') String? title,
          @JsonKey(name: 'choose_language') String? chooseLanguage}) =
      _$_LanguageSettings;

  factory _LanguageSettings.fromJson(Map<String, dynamic> json) =
      _$_LanguageSettings.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'choose_language')
  String? get chooseLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageSettingsCopyWith<_LanguageSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
