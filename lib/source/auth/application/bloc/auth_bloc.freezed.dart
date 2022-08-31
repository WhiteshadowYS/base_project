// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _SignInEvent signIn() {
    return _SignInEvent();
  }

  _SignUpEvent signUp() {
    return _SignUpEvent();
  }

  _SignOutEvent signOut() {
    return _SignOutEvent();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_SignOutEvent value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_SignOutEvent value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$SignInEventCopyWith<$Res> {
  factory _$SignInEventCopyWith(
          _SignInEvent value, $Res Function(_SignInEvent) then) =
      __$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInEventCopyWith<$Res> {
  __$SignInEventCopyWithImpl(
      _SignInEvent _value, $Res Function(_SignInEvent) _then)
      : super(_value, (v) => _then(v as _SignInEvent));

  @override
  _SignInEvent get _value => super._value as _SignInEvent;
}

/// @nodoc

@With<SignInUseCase>()
class _$_SignInEvent extends _SignInEvent with SignInUseCase {
  _$_SignInEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signOut,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signOut,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_SignOutEvent value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignInEvent extends AuthEvent implements SignInUseCase {
  factory _SignInEvent() = _$_SignInEvent;
  _SignInEvent._() : super._();
}

/// @nodoc
abstract class _$SignUpEventCopyWith<$Res> {
  factory _$SignUpEventCopyWith(
          _SignUpEvent value, $Res Function(_SignUpEvent) then) =
      __$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignUpEventCopyWith<$Res> {
  __$SignUpEventCopyWithImpl(
      _SignUpEvent _value, $Res Function(_SignUpEvent) _then)
      : super(_value, (v) => _then(v as _SignUpEvent));

  @override
  _SignUpEvent get _value => super._value as _SignUpEvent;
}

/// @nodoc

@With<SignUpUseCase>()
class _$_SignUpEvent extends _SignUpEvent with SignUpUseCase {
  _$_SignUpEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.signUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignUpEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signOut,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signOut,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_SignOutEvent value)? signOut,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUpEvent extends AuthEvent implements SignUpUseCase {
  factory _SignUpEvent() = _$_SignUpEvent;
  _SignUpEvent._() : super._();
}

/// @nodoc
abstract class _$SignOutEventCopyWith<$Res> {
  factory _$SignOutEventCopyWith(
          _SignOutEvent value, $Res Function(_SignOutEvent) then) =
      __$SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignOutEventCopyWith<$Res> {
  __$SignOutEventCopyWithImpl(
      _SignOutEvent _value, $Res Function(_SignOutEvent) _then)
      : super(_value, (v) => _then(v as _SignOutEvent));

  @override
  _SignOutEvent get _value => super._value as _SignOutEvent;
}

/// @nodoc

@With<SignOutUseCase>()
class _$_SignOutEvent extends _SignOutEvent with SignOutUseCase {
  _$_SignOutEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignUpEvent value) signUp,
    required TResult Function(_SignOutEvent value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_SignOutEvent value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutEvent extends AuthEvent implements SignOutUseCase {
  factory _SignOutEvent() = _$_SignOutEvent;
  _SignOutEvent._() : super._();
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _InitialAuthState initial() {
    return _InitialAuthState();
  }

  _LogginedAuthState loggined() {
    return _LogginedAuthState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_LogginedAuthState value) loggined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LogginedAuthState value)? loggined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LogginedAuthState value)? loggined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialAuthStateCopyWith<$Res> {
  factory _$InitialAuthStateCopyWith(
          _InitialAuthState value, $Res Function(_InitialAuthState) then) =
      __$InitialAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialAuthStateCopyWith<$Res> {
  __$InitialAuthStateCopyWithImpl(
      _InitialAuthState _value, $Res Function(_InitialAuthState) _then)
      : super(_value, (v) => _then(v as _InitialAuthState));

  @override
  _InitialAuthState get _value => super._value as _InitialAuthState;
}

/// @nodoc

class _$_InitialAuthState extends _InitialAuthState {
  _$_InitialAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggined,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggined,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggined,
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
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_LogginedAuthState value) loggined,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LogginedAuthState value)? loggined,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LogginedAuthState value)? loggined,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAuthState extends AuthState {
  factory _InitialAuthState() = _$_InitialAuthState;
  _InitialAuthState._() : super._();
}

/// @nodoc
abstract class _$LogginedAuthStateCopyWith<$Res> {
  factory _$LogginedAuthStateCopyWith(
          _LogginedAuthState value, $Res Function(_LogginedAuthState) then) =
      __$LogginedAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogginedAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$LogginedAuthStateCopyWith<$Res> {
  __$LogginedAuthStateCopyWithImpl(
      _LogginedAuthState _value, $Res Function(_LogginedAuthState) _then)
      : super(_value, (v) => _then(v as _LogginedAuthState));

  @override
  _LogginedAuthState get _value => super._value as _LogginedAuthState;
}

/// @nodoc

class _$_LogginedAuthState extends _LogginedAuthState {
  _$_LogginedAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.loggined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LogginedAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggined,
  }) {
    return loggined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggined,
  }) {
    return loggined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggined,
    required TResult orElse(),
  }) {
    if (loggined != null) {
      return loggined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_LogginedAuthState value) loggined,
  }) {
    return loggined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LogginedAuthState value)? loggined,
  }) {
    return loggined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LogginedAuthState value)? loggined,
    required TResult orElse(),
  }) {
    if (loggined != null) {
      return loggined(this);
    }
    return orElse();
  }
}

abstract class _LogginedAuthState extends AuthState {
  factory _LogginedAuthState() = _$_LogginedAuthState;
  _LogginedAuthState._() : super._();
}
