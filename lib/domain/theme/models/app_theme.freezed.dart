// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppTheme _$AppThemeFromJson(Map<String, dynamic> json) {
  return _AppTheme.fromJson(json);
}

/// @nodoc
class _$AppThemeTearOff {
  const _$AppThemeTearOff();

  _AppTheme call(
      {String? themeName,
      AppColors? colors,
      AppTextStyles? textStyles,
      AppEdgeInsets? edgeInsets}) {
    return _AppTheme(
      themeName: themeName,
      colors: colors,
      textStyles: textStyles,
      edgeInsets: edgeInsets,
    );
  }

  AppTheme fromJson(Map<String, Object> json) {
    return AppTheme.fromJson(json);
  }
}

/// @nodoc
const $AppTheme = _$AppThemeTearOff();

/// @nodoc
mixin _$AppTheme {
  String? get themeName => throw _privateConstructorUsedError;
  AppColors? get colors => throw _privateConstructorUsedError;
  AppTextStyles? get textStyles => throw _privateConstructorUsedError;
  AppEdgeInsets? get edgeInsets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppThemeCopyWith<AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeCopyWith<$Res> {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) then) =
      _$AppThemeCopyWithImpl<$Res>;
  $Res call(
      {String? themeName,
      AppColors? colors,
      AppTextStyles? textStyles,
      AppEdgeInsets? edgeInsets});
}

/// @nodoc
class _$AppThemeCopyWithImpl<$Res> implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._value, this._then);

  final AppTheme _value;
  // ignore: unused_field
  final $Res Function(AppTheme) _then;

  @override
  $Res call({
    Object? themeName = freezed,
    Object? colors = freezed,
    Object? textStyles = freezed,
    Object? edgeInsets = freezed,
  }) {
    return _then(_value.copyWith(
      themeName: themeName == freezed
          ? _value.themeName
          : themeName // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as AppColors?,
      textStyles: textStyles == freezed
          ? _value.textStyles
          : textStyles // ignore: cast_nullable_to_non_nullable
              as AppTextStyles?,
      edgeInsets: edgeInsets == freezed
          ? _value.edgeInsets
          : edgeInsets // ignore: cast_nullable_to_non_nullable
              as AppEdgeInsets?,
    ));
  }
}

/// @nodoc
abstract class _$AppThemeCopyWith<$Res> implements $AppThemeCopyWith<$Res> {
  factory _$AppThemeCopyWith(_AppTheme value, $Res Function(_AppTheme) then) =
      __$AppThemeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? themeName,
      AppColors? colors,
      AppTextStyles? textStyles,
      AppEdgeInsets? edgeInsets});
}

/// @nodoc
class __$AppThemeCopyWithImpl<$Res> extends _$AppThemeCopyWithImpl<$Res>
    implements _$AppThemeCopyWith<$Res> {
  __$AppThemeCopyWithImpl(_AppTheme _value, $Res Function(_AppTheme) _then)
      : super(_value, (v) => _then(v as _AppTheme));

  @override
  _AppTheme get _value => super._value as _AppTheme;

  @override
  $Res call({
    Object? themeName = freezed,
    Object? colors = freezed,
    Object? textStyles = freezed,
    Object? edgeInsets = freezed,
  }) {
    return _then(_AppTheme(
      themeName: themeName == freezed
          ? _value.themeName
          : themeName // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as AppColors?,
      textStyles: textStyles == freezed
          ? _value.textStyles
          : textStyles // ignore: cast_nullable_to_non_nullable
              as AppTextStyles?,
      edgeInsets: edgeInsets == freezed
          ? _value.edgeInsets
          : edgeInsets // ignore: cast_nullable_to_non_nullable
              as AppEdgeInsets?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppTheme implements _AppTheme {
  const _$_AppTheme(
      {this.themeName, this.colors, this.textStyles, this.edgeInsets});

  factory _$_AppTheme.fromJson(Map<String, dynamic> json) =>
      _$_$_AppThemeFromJson(json);

  @override
  final String? themeName;
  @override
  final AppColors? colors;
  @override
  final AppTextStyles? textStyles;
  @override
  final AppEdgeInsets? edgeInsets;

  @override
  String toString() {
    return 'AppTheme(themeName: $themeName, colors: $colors, textStyles: $textStyles, edgeInsets: $edgeInsets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppTheme &&
            (identical(other.themeName, themeName) ||
                const DeepCollectionEquality()
                    .equals(other.themeName, themeName)) &&
            (identical(other.colors, colors) ||
                const DeepCollectionEquality().equals(other.colors, colors)) &&
            (identical(other.textStyles, textStyles) ||
                const DeepCollectionEquality()
                    .equals(other.textStyles, textStyles)) &&
            (identical(other.edgeInsets, edgeInsets) ||
                const DeepCollectionEquality()
                    .equals(other.edgeInsets, edgeInsets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(themeName) ^
      const DeepCollectionEquality().hash(colors) ^
      const DeepCollectionEquality().hash(textStyles) ^
      const DeepCollectionEquality().hash(edgeInsets);

  @JsonKey(ignore: true)
  @override
  _$AppThemeCopyWith<_AppTheme> get copyWith =>
      __$AppThemeCopyWithImpl<_AppTheme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppThemeToJson(this);
  }
}

abstract class _AppTheme implements AppTheme {
  const factory _AppTheme(
      {String? themeName,
      AppColors? colors,
      AppTextStyles? textStyles,
      AppEdgeInsets? edgeInsets}) = _$_AppTheme;

  factory _AppTheme.fromJson(Map<String, dynamic> json) = _$_AppTheme.fromJson;

  @override
  String? get themeName => throw _privateConstructorUsedError;
  @override
  AppColors? get colors => throw _privateConstructorUsedError;
  @override
  AppTextStyles? get textStyles => throw _privateConstructorUsedError;
  @override
  AppEdgeInsets? get edgeInsets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppThemeCopyWith<_AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}
