// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_side_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageSideMenu _$LanguageSideMenuFromJson(Map<String, dynamic> json) {
  return _LanguageSideMenu.fromJson(json);
}

/// @nodoc
class _$LanguageSideMenuTearOff {
  const _$LanguageSideMenuTearOff();

  _LanguageSideMenu call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'settings') String? settings,
      @JsonKey(name: 'notifications') String? notifications,
      @JsonKey(name: 'logout') String? logout}) {
    return _LanguageSideMenu(
      title: title,
      settings: settings,
      notifications: notifications,
      logout: logout,
    );
  }

  LanguageSideMenu fromJson(Map<String, Object> json) {
    return LanguageSideMenu.fromJson(json);
  }
}

/// @nodoc
const $LanguageSideMenu = _$LanguageSideMenuTearOff();

/// @nodoc
mixin _$LanguageSideMenu {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'settings')
  String? get settings => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifications')
  String? get notifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'logout')
  String? get logout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageSideMenuCopyWith<LanguageSideMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageSideMenuCopyWith<$Res> {
  factory $LanguageSideMenuCopyWith(
          LanguageSideMenu value, $Res Function(LanguageSideMenu) then) =
      _$LanguageSideMenuCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'settings') String? settings,
      @JsonKey(name: 'notifications') String? notifications,
      @JsonKey(name: 'logout') String? logout});
}

/// @nodoc
class _$LanguageSideMenuCopyWithImpl<$Res>
    implements $LanguageSideMenuCopyWith<$Res> {
  _$LanguageSideMenuCopyWithImpl(this._value, this._then);

  final LanguageSideMenu _value;
  // ignore: unused_field
  final $Res Function(LanguageSideMenu) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? settings = freezed,
    Object? notifications = freezed,
    Object? logout = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as String?,
      logout: logout == freezed
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageSideMenuCopyWith<$Res>
    implements $LanguageSideMenuCopyWith<$Res> {
  factory _$LanguageSideMenuCopyWith(
          _LanguageSideMenu value, $Res Function(_LanguageSideMenu) then) =
      __$LanguageSideMenuCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'settings') String? settings,
      @JsonKey(name: 'notifications') String? notifications,
      @JsonKey(name: 'logout') String? logout});
}

/// @nodoc
class __$LanguageSideMenuCopyWithImpl<$Res>
    extends _$LanguageSideMenuCopyWithImpl<$Res>
    implements _$LanguageSideMenuCopyWith<$Res> {
  __$LanguageSideMenuCopyWithImpl(
      _LanguageSideMenu _value, $Res Function(_LanguageSideMenu) _then)
      : super(_value, (v) => _then(v as _LanguageSideMenu));

  @override
  _LanguageSideMenu get _value => super._value as _LanguageSideMenu;

  @override
  $Res call({
    Object? title = freezed,
    Object? settings = freezed,
    Object? notifications = freezed,
    Object? logout = freezed,
  }) {
    return _then(_LanguageSideMenu(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as String?,
      logout: logout == freezed
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguageSideMenu implements _LanguageSideMenu {
  const _$_LanguageSideMenu(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'settings') this.settings,
      @JsonKey(name: 'notifications') this.notifications,
      @JsonKey(name: 'logout') this.logout});

  factory _$_LanguageSideMenu.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageSideMenuFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'settings')
  final String? settings;
  @override
  @JsonKey(name: 'notifications')
  final String? notifications;
  @override
  @JsonKey(name: 'logout')
  final String? logout;

  @override
  String toString() {
    return 'LanguageSideMenu(title: $title, settings: $settings, notifications: $notifications, logout: $logout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageSideMenu &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)) &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)) &&
            (identical(other.logout, logout) ||
                const DeepCollectionEquality().equals(other.logout, logout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(settings) ^
      const DeepCollectionEquality().hash(notifications) ^
      const DeepCollectionEquality().hash(logout);

  @JsonKey(ignore: true)
  @override
  _$LanguageSideMenuCopyWith<_LanguageSideMenu> get copyWith =>
      __$LanguageSideMenuCopyWithImpl<_LanguageSideMenu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageSideMenuToJson(this);
  }
}

abstract class _LanguageSideMenu implements LanguageSideMenu {
  const factory _LanguageSideMenu(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'settings') String? settings,
      @JsonKey(name: 'notifications') String? notifications,
      @JsonKey(name: 'logout') String? logout}) = _$_LanguageSideMenu;

  factory _LanguageSideMenu.fromJson(Map<String, dynamic> json) =
      _$_LanguageSideMenu.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'settings')
  String? get settings => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'notifications')
  String? get notifications => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'logout')
  String? get logout => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageSideMenuCopyWith<_LanguageSideMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
