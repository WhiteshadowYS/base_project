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

  _InitApp initApp() {
    return const _InitApp();
  }

  _InitApp2 initApp2() {
    return const _InitApp2();
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initApp,
    required TResult Function() initApp2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initApp,
    TResult Function()? initApp2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitApp value) initApp,
    required TResult Function(_InitApp2 value) initApp2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitApp value)? initApp,
    TResult Function(_InitApp2 value)? initApp2,
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
abstract class _$InitAppCopyWith<$Res> {
  factory _$InitAppCopyWith(_InitApp value, $Res Function(_InitApp) then) =
      __$InitAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitAppCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$InitAppCopyWith<$Res> {
  __$InitAppCopyWithImpl(_InitApp _value, $Res Function(_InitApp) _then)
      : super(_value, (v) => _then(v as _InitApp));

  @override
  _InitApp get _value => super._value as _InitApp;
}

/// @nodoc

@With(InitAppUseCase)
class _$_InitApp with InitAppUseCase implements _InitApp {
  const _$_InitApp();

  @override
  String toString() {
    return 'AppEvent.initApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initApp,
    required TResult Function() initApp2,
  }) {
    return initApp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initApp,
    TResult Function()? initApp2,
    required TResult orElse(),
  }) {
    if (initApp != null) {
      return initApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitApp value) initApp,
    required TResult Function(_InitApp2 value) initApp2,
  }) {
    return initApp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitApp value)? initApp,
    TResult Function(_InitApp2 value)? initApp2,
    required TResult orElse(),
  }) {
    if (initApp != null) {
      return initApp(this);
    }
    return orElse();
  }
}

abstract class _InitApp implements AppEvent, InitAppUseCase {
  const factory _InitApp() = _$_InitApp;
}

/// @nodoc
abstract class _$InitApp2CopyWith<$Res> {
  factory _$InitApp2CopyWith(_InitApp2 value, $Res Function(_InitApp2) then) =
      __$InitApp2CopyWithImpl<$Res>;
}

/// @nodoc
class __$InitApp2CopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$InitApp2CopyWith<$Res> {
  __$InitApp2CopyWithImpl(_InitApp2 _value, $Res Function(_InitApp2) _then)
      : super(_value, (v) => _then(v as _InitApp2));

  @override
  _InitApp2 get _value => super._value as _InitApp2;
}

/// @nodoc

@With(InitAppUseCase2)
class _$_InitApp2 with InitAppUseCase2 implements _InitApp2 {
  const _$_InitApp2();

  @override
  String toString() {
    return 'AppEvent.initApp2()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitApp2);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initApp,
    required TResult Function() initApp2,
  }) {
    return initApp2();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initApp,
    TResult Function()? initApp2,
    required TResult orElse(),
  }) {
    if (initApp2 != null) {
      return initApp2();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitApp value) initApp,
    required TResult Function(_InitApp2 value) initApp2,
  }) {
    return initApp2(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitApp value)? initApp,
    TResult Function(_InitApp2 value)? initApp2,
    required TResult orElse(),
  }) {
    if (initApp2 != null) {
      return initApp2(this);
    }
    return orElse();
  }
}

abstract class _InitApp2 implements AppEvent, InitAppUseCase2 {
  const factory _InitApp2() = _$_InitApp2;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call() {
    return const _AppState();
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {}

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
abstract class _$AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState();

  @override
  String toString() {
    return 'AppState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AppState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AppState implements AppState {
  const factory _AppState() = _$_AppState;
}
