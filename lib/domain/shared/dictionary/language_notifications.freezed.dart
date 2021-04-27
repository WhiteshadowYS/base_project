// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageNotifications _$LanguageNotificationsFromJson(
    Map<String, dynamic> json) {
  return _LanguageNotifications.fromJson(json);
}

/// @nodoc
class _$LanguageNotificationsTearOff {
  const _$LanguageNotificationsTearOff();

  _LanguageNotifications call({@JsonKey(name: 'title') String? title}) {
    return _LanguageNotifications(
      title: title,
    );
  }

  LanguageNotifications fromJson(Map<String, Object> json) {
    return LanguageNotifications.fromJson(json);
  }
}

/// @nodoc
const $LanguageNotifications = _$LanguageNotificationsTearOff();

/// @nodoc
mixin _$LanguageNotifications {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageNotificationsCopyWith<LanguageNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageNotificationsCopyWith<$Res> {
  factory $LanguageNotificationsCopyWith(LanguageNotifications value,
          $Res Function(LanguageNotifications) then) =
      _$LanguageNotificationsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$LanguageNotificationsCopyWithImpl<$Res>
    implements $LanguageNotificationsCopyWith<$Res> {
  _$LanguageNotificationsCopyWithImpl(this._value, this._then);

  final LanguageNotifications _value;
  // ignore: unused_field
  final $Res Function(LanguageNotifications) _then;

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
abstract class _$LanguageNotificationsCopyWith<$Res>
    implements $LanguageNotificationsCopyWith<$Res> {
  factory _$LanguageNotificationsCopyWith(_LanguageNotifications value,
          $Res Function(_LanguageNotifications) then) =
      __$LanguageNotificationsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$LanguageNotificationsCopyWithImpl<$Res>
    extends _$LanguageNotificationsCopyWithImpl<$Res>
    implements _$LanguageNotificationsCopyWith<$Res> {
  __$LanguageNotificationsCopyWithImpl(_LanguageNotifications _value,
      $Res Function(_LanguageNotifications) _then)
      : super(_value, (v) => _then(v as _LanguageNotifications));

  @override
  _LanguageNotifications get _value => super._value as _LanguageNotifications;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_LanguageNotifications(
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
class _$_LanguageNotifications implements _LanguageNotifications {
  const _$_LanguageNotifications({@JsonKey(name: 'title') this.title});

  factory _$_LanguageNotifications.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageNotificationsFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'LanguageNotifications(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageNotifications &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$LanguageNotificationsCopyWith<_LanguageNotifications> get copyWith =>
      __$LanguageNotificationsCopyWithImpl<_LanguageNotifications>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageNotificationsToJson(this);
  }
}

abstract class _LanguageNotifications implements LanguageNotifications {
  const factory _LanguageNotifications(
      {@JsonKey(name: 'title') String? title}) = _$_LanguageNotifications;

  factory _LanguageNotifications.fromJson(Map<String, dynamic> json) =
      _$_LanguageNotifications.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageNotificationsCopyWith<_LanguageNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}
