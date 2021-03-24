// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_global.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageGlobal _$LanguageGlobalFromJson(Map<String, dynamic> json) {
  return _LanguageGlobal.fromJson(json);
}

/// @nodoc
class _$LanguageGlobalTearOff {
  const _$LanguageGlobalTearOff();

  _LanguageGlobal call({@JsonKey(name: 'error_title') String? errorTitle}) {
    return _LanguageGlobal(
      errorTitle: errorTitle,
    );
  }

  LanguageGlobal fromJson(Map<String, Object> json) {
    return LanguageGlobal.fromJson(json);
  }
}

/// @nodoc
const $LanguageGlobal = _$LanguageGlobalTearOff();

/// @nodoc
mixin _$LanguageGlobal {
  @JsonKey(name: 'error_title')
  String? get errorTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageGlobalCopyWith<LanguageGlobal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageGlobalCopyWith<$Res> {
  factory $LanguageGlobalCopyWith(
          LanguageGlobal value, $Res Function(LanguageGlobal) then) =
      _$LanguageGlobalCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'error_title') String? errorTitle});
}

/// @nodoc
class _$LanguageGlobalCopyWithImpl<$Res>
    implements $LanguageGlobalCopyWith<$Res> {
  _$LanguageGlobalCopyWithImpl(this._value, this._then);

  final LanguageGlobal _value;
  // ignore: unused_field
  final $Res Function(LanguageGlobal) _then;

  @override
  $Res call({
    Object? errorTitle = freezed,
  }) {
    return _then(_value.copyWith(
      errorTitle: errorTitle == freezed
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageGlobalCopyWith<$Res>
    implements $LanguageGlobalCopyWith<$Res> {
  factory _$LanguageGlobalCopyWith(
          _LanguageGlobal value, $Res Function(_LanguageGlobal) then) =
      __$LanguageGlobalCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'error_title') String? errorTitle});
}

/// @nodoc
class __$LanguageGlobalCopyWithImpl<$Res>
    extends _$LanguageGlobalCopyWithImpl<$Res>
    implements _$LanguageGlobalCopyWith<$Res> {
  __$LanguageGlobalCopyWithImpl(
      _LanguageGlobal _value, $Res Function(_LanguageGlobal) _then)
      : super(_value, (v) => _then(v as _LanguageGlobal));

  @override
  _LanguageGlobal get _value => super._value as _LanguageGlobal;

  @override
  $Res call({
    Object? errorTitle = freezed,
  }) {
    return _then(_LanguageGlobal(
      errorTitle: errorTitle == freezed
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguageGlobal implements _LanguageGlobal {
  const _$_LanguageGlobal({@JsonKey(name: 'error_title') this.errorTitle});

  factory _$_LanguageGlobal.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageGlobalFromJson(json);

  @override
  @JsonKey(name: 'error_title')
  final String? errorTitle;

  @override
  String toString() {
    return 'LanguageGlobal(errorTitle: $errorTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageGlobal &&
            (identical(other.errorTitle, errorTitle) ||
                const DeepCollectionEquality()
                    .equals(other.errorTitle, errorTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorTitle);

  @JsonKey(ignore: true)
  @override
  _$LanguageGlobalCopyWith<_LanguageGlobal> get copyWith =>
      __$LanguageGlobalCopyWithImpl<_LanguageGlobal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageGlobalToJson(this);
  }
}

abstract class _LanguageGlobal implements LanguageGlobal {
  const factory _LanguageGlobal(
      {@JsonKey(name: 'error_title') String? errorTitle}) = _$_LanguageGlobal;

  factory _LanguageGlobal.fromJson(Map<String, dynamic> json) =
      _$_LanguageGlobal.fromJson;

  @override
  @JsonKey(name: 'error_title')
  String? get errorTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageGlobalCopyWith<_LanguageGlobal> get copyWith =>
      throw _privateConstructorUsedError;
}
