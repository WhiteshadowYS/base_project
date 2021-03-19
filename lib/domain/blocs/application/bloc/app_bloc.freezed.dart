// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _Initialize initialize() {
    return const _Initialize();
  }

  _ChangeLocale changeLocale(Locale locale) {
    return _ChangeLocale(
      locale,
    );
  }

  _ChangeAppBarState changeAppBarState(AppBarState state) {
    return _ChangeAppBarState(
      state,
    );
  }

  _ChangeBottomBarState changeBottomBarState(BottomBarState state) {
    return _ChangeBottomBarState(
      state,
    );
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Locale locale) changeLocale,
    required TResult Function(AppBarState state) changeAppBarState,
    required TResult Function(BottomBarState state) changeBottomBarState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Locale locale)? changeLocale,
    TResult Function(AppBarState state)? changeAppBarState,
    TResult Function(BottomBarState state)? changeBottomBarState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeLocale value) changeLocale,
    required TResult Function(_ChangeAppBarState value) changeAppBarState,
    required TResult Function(_ChangeBottomBarState value) changeBottomBarState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeLocale value)? changeLocale,
    TResult Function(_ChangeAppBarState value)? changeAppBarState,
    TResult Function(_ChangeBottomBarState value)? changeBottomBarState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;
}

/// @nodoc
class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'AppEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Locale locale) changeLocale,
    required TResult Function(AppBarState state) changeAppBarState,
    required TResult Function(BottomBarState state) changeBottomBarState,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Locale locale)? changeLocale,
    TResult Function(AppBarState state)? changeAppBarState,
    TResult Function(BottomBarState state)? changeBottomBarState,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeLocale value) changeLocale,
    required TResult Function(_ChangeAppBarState value) changeAppBarState,
    required TResult Function(_ChangeBottomBarState value) changeBottomBarState,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeLocale value)? changeLocale,
    TResult Function(_ChangeAppBarState value)? changeAppBarState,
    TResult Function(_ChangeBottomBarState value)? changeBottomBarState,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements AppEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
abstract class _$ChangeLocaleCopyWith<$Res> {
  factory _$ChangeLocaleCopyWith(
          _ChangeLocale value, $Res Function(_ChangeLocale) then) =
      __$ChangeLocaleCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class __$ChangeLocaleCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$ChangeLocaleCopyWith<$Res> {
  __$ChangeLocaleCopyWithImpl(
      _ChangeLocale _value, $Res Function(_ChangeLocale) _then)
      : super(_value, (v) => _then(v as _ChangeLocale));

  @override
  _ChangeLocale get _value => super._value as _ChangeLocale;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_ChangeLocale(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
class _$_ChangeLocale implements _ChangeLocale {
  const _$_ChangeLocale(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppEvent.changeLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLocale &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$ChangeLocaleCopyWith<_ChangeLocale> get copyWith =>
      __$ChangeLocaleCopyWithImpl<_ChangeLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Locale locale) changeLocale,
    required TResult Function(AppBarState state) changeAppBarState,
    required TResult Function(BottomBarState state) changeBottomBarState,
  }) {
    return changeLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Locale locale)? changeLocale,
    TResult Function(AppBarState state)? changeAppBarState,
    TResult Function(BottomBarState state)? changeBottomBarState,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeLocale value) changeLocale,
    required TResult Function(_ChangeAppBarState value) changeAppBarState,
    required TResult Function(_ChangeBottomBarState value) changeBottomBarState,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeLocale value)? changeLocale,
    TResult Function(_ChangeAppBarState value)? changeAppBarState,
    TResult Function(_ChangeBottomBarState value)? changeBottomBarState,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocale implements AppEvent {
  const factory _ChangeLocale(Locale locale) = _$_ChangeLocale;

  Locale get locale => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeLocaleCopyWith<_ChangeLocale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeAppBarStateCopyWith<$Res> {
  factory _$ChangeAppBarStateCopyWith(
          _ChangeAppBarState value, $Res Function(_ChangeAppBarState) then) =
      __$ChangeAppBarStateCopyWithImpl<$Res>;
  $Res call({AppBarState state});
}

/// @nodoc
class __$ChangeAppBarStateCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$ChangeAppBarStateCopyWith<$Res> {
  __$ChangeAppBarStateCopyWithImpl(
      _ChangeAppBarState _value, $Res Function(_ChangeAppBarState) _then)
      : super(_value, (v) => _then(v as _ChangeAppBarState));

  @override
  _ChangeAppBarState get _value => super._value as _ChangeAppBarState;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_ChangeAppBarState(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppBarState,
    ));
  }
}

/// @nodoc
class _$_ChangeAppBarState implements _ChangeAppBarState {
  const _$_ChangeAppBarState(this.state);

  @override
  final AppBarState state;

  @override
  String toString() {
    return 'AppEvent.changeAppBarState(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAppBarState &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(state);

  @JsonKey(ignore: true)
  @override
  _$ChangeAppBarStateCopyWith<_ChangeAppBarState> get copyWith =>
      __$ChangeAppBarStateCopyWithImpl<_ChangeAppBarState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Locale locale) changeLocale,
    required TResult Function(AppBarState state) changeAppBarState,
    required TResult Function(BottomBarState state) changeBottomBarState,
  }) {
    return changeAppBarState(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Locale locale)? changeLocale,
    TResult Function(AppBarState state)? changeAppBarState,
    TResult Function(BottomBarState state)? changeBottomBarState,
    required TResult orElse(),
  }) {
    if (changeAppBarState != null) {
      return changeAppBarState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeLocale value) changeLocale,
    required TResult Function(_ChangeAppBarState value) changeAppBarState,
    required TResult Function(_ChangeBottomBarState value) changeBottomBarState,
  }) {
    return changeAppBarState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeLocale value)? changeLocale,
    TResult Function(_ChangeAppBarState value)? changeAppBarState,
    TResult Function(_ChangeBottomBarState value)? changeBottomBarState,
    required TResult orElse(),
  }) {
    if (changeAppBarState != null) {
      return changeAppBarState(this);
    }
    return orElse();
  }
}

abstract class _ChangeAppBarState implements AppEvent {
  const factory _ChangeAppBarState(AppBarState state) = _$_ChangeAppBarState;

  AppBarState get state => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeAppBarStateCopyWith<_ChangeAppBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeBottomBarStateCopyWith<$Res> {
  factory _$ChangeBottomBarStateCopyWith(_ChangeBottomBarState value,
          $Res Function(_ChangeBottomBarState) then) =
      __$ChangeBottomBarStateCopyWithImpl<$Res>;
  $Res call({BottomBarState state});
}

/// @nodoc
class __$ChangeBottomBarStateCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$ChangeBottomBarStateCopyWith<$Res> {
  __$ChangeBottomBarStateCopyWithImpl(
      _ChangeBottomBarState _value, $Res Function(_ChangeBottomBarState) _then)
      : super(_value, (v) => _then(v as _ChangeBottomBarState));

  @override
  _ChangeBottomBarState get _value => super._value as _ChangeBottomBarState;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_ChangeBottomBarState(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BottomBarState,
    ));
  }
}

/// @nodoc
class _$_ChangeBottomBarState implements _ChangeBottomBarState {
  const _$_ChangeBottomBarState(this.state);

  @override
  final BottomBarState state;

  @override
  String toString() {
    return 'AppEvent.changeBottomBarState(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeBottomBarState &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(state);

  @JsonKey(ignore: true)
  @override
  _$ChangeBottomBarStateCopyWith<_ChangeBottomBarState> get copyWith =>
      __$ChangeBottomBarStateCopyWithImpl<_ChangeBottomBarState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(Locale locale) changeLocale,
    required TResult Function(AppBarState state) changeAppBarState,
    required TResult Function(BottomBarState state) changeBottomBarState,
  }) {
    return changeBottomBarState(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(Locale locale)? changeLocale,
    TResult Function(AppBarState state)? changeAppBarState,
    TResult Function(BottomBarState state)? changeBottomBarState,
    required TResult orElse(),
  }) {
    if (changeBottomBarState != null) {
      return changeBottomBarState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeLocale value) changeLocale,
    required TResult Function(_ChangeAppBarState value) changeAppBarState,
    required TResult Function(_ChangeBottomBarState value) changeBottomBarState,
  }) {
    return changeBottomBarState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeLocale value)? changeLocale,
    TResult Function(_ChangeAppBarState value)? changeAppBarState,
    TResult Function(_ChangeBottomBarState value)? changeBottomBarState,
    required TResult orElse(),
  }) {
    if (changeBottomBarState != null) {
      return changeBottomBarState(this);
    }
    return orElse();
  }
}

abstract class _ChangeBottomBarState implements AppEvent {
  const factory _ChangeBottomBarState(BottomBarState state) =
      _$_ChangeBottomBarState;

  BottomBarState get state => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeBottomBarStateCopyWith<_ChangeBottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Initialized initialized(
      {Locale? locale,
      BottomBarState bottomBarState = BottomBarState.Closed,
      AppBarState appBarState = AppBarState.Closed}) {
    return _Initialized(
      locale: locale,
      bottomBarState: bottomBarState,
      appBarState: appBarState,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale? locale, BottomBarState bottomBarState,
            AppBarState appBarState)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale? locale, BottomBarState bottomBarState,
            AppBarState appBarState)?
        initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale? locale, BottomBarState bottomBarState,
            AppBarState appBarState)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale? locale, BottomBarState bottomBarState,
            AppBarState appBarState)?
        initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call(
      {Locale? locale, BottomBarState bottomBarState, AppBarState appBarState});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? locale = freezed,
    Object? bottomBarState = freezed,
    Object? appBarState = freezed,
  }) {
    return _then(_Initialized(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      bottomBarState: bottomBarState == freezed
          ? _value.bottomBarState
          : bottomBarState // ignore: cast_nullable_to_non_nullable
              as BottomBarState,
      appBarState: appBarState == freezed
          ? _value.appBarState
          : appBarState // ignore: cast_nullable_to_non_nullable
              as AppBarState,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(
      {this.locale,
      this.bottomBarState = BottomBarState.Closed,
      this.appBarState = AppBarState.Closed});

  @override
  final Locale? locale;
  @JsonKey(defaultValue: BottomBarState.Closed)
  @override
  final BottomBarState bottomBarState;
  @JsonKey(defaultValue: AppBarState.Closed)
  @override
  final AppBarState appBarState;

  @override
  String toString() {
    return 'AppState.initialized(locale: $locale, bottomBarState: $bottomBarState, appBarState: $appBarState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.bottomBarState, bottomBarState) ||
                const DeepCollectionEquality()
                    .equals(other.bottomBarState, bottomBarState)) &&
            (identical(other.appBarState, appBarState) ||
                const DeepCollectionEquality()
                    .equals(other.appBarState, appBarState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(bottomBarState) ^
      const DeepCollectionEquality().hash(appBarState);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale? locale, BottomBarState bottomBarState,
            AppBarState appBarState)
        initialized,
  }) {
    return initialized(locale, bottomBarState, appBarState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale? locale, BottomBarState bottomBarState,
            AppBarState appBarState)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(locale, bottomBarState, appBarState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AppState {
  const factory _Initialized(
      {Locale? locale,
      BottomBarState bottomBarState,
      AppBarState appBarState}) = _$_Initialized;

  Locale? get locale => throw _privateConstructorUsedError;
  BottomBarState get bottomBarState => throw _privateConstructorUsedError;
  AppBarState get appBarState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
