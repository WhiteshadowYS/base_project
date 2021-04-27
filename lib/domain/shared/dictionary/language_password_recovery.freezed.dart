// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_password_recovery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguagePasswordRecovery _$LanguagePasswordRecoveryFromJson(
    Map<String, dynamic> json) {
  return _LanguagePasswordRecovery.fromJson(json);
}

/// @nodoc
class _$LanguagePasswordRecoveryTearOff {
  const _$LanguagePasswordRecoveryTearOff();

  _LanguagePasswordRecovery call({@JsonKey(name: 'title') String? title}) {
    return _LanguagePasswordRecovery(
      title: title,
    );
  }

  LanguagePasswordRecovery fromJson(Map<String, Object> json) {
    return LanguagePasswordRecovery.fromJson(json);
  }
}

/// @nodoc
const $LanguagePasswordRecovery = _$LanguagePasswordRecoveryTearOff();

/// @nodoc
mixin _$LanguagePasswordRecovery {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguagePasswordRecoveryCopyWith<LanguagePasswordRecovery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagePasswordRecoveryCopyWith<$Res> {
  factory $LanguagePasswordRecoveryCopyWith(LanguagePasswordRecovery value,
          $Res Function(LanguagePasswordRecovery) then) =
      _$LanguagePasswordRecoveryCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$LanguagePasswordRecoveryCopyWithImpl<$Res>
    implements $LanguagePasswordRecoveryCopyWith<$Res> {
  _$LanguagePasswordRecoveryCopyWithImpl(this._value, this._then);

  final LanguagePasswordRecovery _value;
  // ignore: unused_field
  final $Res Function(LanguagePasswordRecovery) _then;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguagePasswordRecoveryCopyWith<$Res>
    implements $LanguagePasswordRecoveryCopyWith<$Res> {
  factory _$LanguagePasswordRecoveryCopyWith(_LanguagePasswordRecovery value,
          $Res Function(_LanguagePasswordRecovery) then) =
      __$LanguagePasswordRecoveryCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$LanguagePasswordRecoveryCopyWithImpl<$Res>
    extends _$LanguagePasswordRecoveryCopyWithImpl<$Res>
    implements _$LanguagePasswordRecoveryCopyWith<$Res> {
  __$LanguagePasswordRecoveryCopyWithImpl(_LanguagePasswordRecovery _value,
      $Res Function(_LanguagePasswordRecovery) _then)
      : super(_value, (v) => _then(v as _LanguagePasswordRecovery));

  @override
  _LanguagePasswordRecovery get _value =>
      super._value as _LanguagePasswordRecovery;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_LanguagePasswordRecovery(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguagePasswordRecovery implements _LanguagePasswordRecovery {
  const _$_LanguagePasswordRecovery({@JsonKey(name: 'title') this.title});

  factory _$_LanguagePasswordRecovery.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguagePasswordRecoveryFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'LanguagePasswordRecovery(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguagePasswordRecovery &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$LanguagePasswordRecoveryCopyWith<_LanguagePasswordRecovery> get copyWith =>
      __$LanguagePasswordRecoveryCopyWithImpl<_LanguagePasswordRecovery>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguagePasswordRecoveryToJson(this);
  }
}

abstract class _LanguagePasswordRecovery implements LanguagePasswordRecovery {
  const factory _LanguagePasswordRecovery(
      {@JsonKey(name: 'title') String? title}) = _$_LanguagePasswordRecovery;

  factory _LanguagePasswordRecovery.fromJson(Map<String, dynamic> json) =
      _$_LanguagePasswordRecovery.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguagePasswordRecoveryCopyWith<_LanguagePasswordRecovery> get copyWith =>
      throw _privateConstructorUsedError;
}
