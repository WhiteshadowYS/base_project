// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  _Started started() {
    return const _Started();
  }

  _Login login(LoginRequestBody body) {
    return _Login(
      body,
    );
  }

  _Register register(RegistrationRequestBody body) {
    return _Register(
      body,
    );
  }

  _Logout logout() {
    return const _Logout();
  }

  _RecoveryPassword recoveryPassword() {
    return const _RecoveryPassword();
  }

  _ForgotPassword fogotPassword({required ForgotPasswordBody body}) {
    return _ForgotPassword(
      body: body,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody body) login,
    required TResult Function(RegistrationRequestBody body) register,
    required TResult Function() logout,
    required TResult Function() recoveryPassword,
    required TResult Function(ForgotPasswordBody body) fogotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody body)? login,
    TResult Function(RegistrationRequestBody body)? register,
    TResult Function()? logout,
    TResult Function()? recoveryPassword,
    TResult Function(ForgotPasswordBody body)? fogotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RecoveryPassword value) recoveryPassword,
    required TResult Function(_ForgotPassword value) fogotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_RecoveryPassword value)? recoveryPassword,
    TResult Function(_ForgotPassword value)? fogotPassword,
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
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody body) login,
    required TResult Function(RegistrationRequestBody body) register,
    required TResult Function() logout,
    required TResult Function() recoveryPassword,
    required TResult Function(ForgotPasswordBody body) fogotPassword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody body)? login,
    TResult Function(RegistrationRequestBody body)? register,
    TResult Function()? logout,
    TResult Function()? recoveryPassword,
    TResult Function(ForgotPasswordBody body)? fogotPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RecoveryPassword value) recoveryPassword,
    required TResult Function(_ForgotPassword value) fogotPassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_RecoveryPassword value)? recoveryPassword,
    TResult Function(_ForgotPassword value)? fogotPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
  $Res call({LoginRequestBody body});

  $LoginRequestBodyCopyWith<$Res> get body;
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_Login(
      body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as LoginRequestBody,
    ));
  }

  @override
  $LoginRequestBodyCopyWith<$Res> get body {
    return $LoginRequestBodyCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
class _$_Login implements _Login {
  const _$_Login(this.body);

  @override
  final LoginRequestBody body;

  @override
  String toString() {
    return 'AuthEvent.login(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Login &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody body) login,
    required TResult Function(RegistrationRequestBody body) register,
    required TResult Function() logout,
    required TResult Function() recoveryPassword,
    required TResult Function(ForgotPasswordBody body) fogotPassword,
  }) {
    return login(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody body)? login,
    TResult Function(RegistrationRequestBody body)? register,
    TResult Function()? logout,
    TResult Function()? recoveryPassword,
    TResult Function(ForgotPasswordBody body)? fogotPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RecoveryPassword value) recoveryPassword,
    required TResult Function(_ForgotPassword value) fogotPassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_RecoveryPassword value)? recoveryPassword,
    TResult Function(_ForgotPassword value)? fogotPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(LoginRequestBody body) = _$_Login;

  LoginRequestBody get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginCopyWith<_Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) then) =
      __$RegisterCopyWithImpl<$Res>;
  $Res call({RegistrationRequestBody body});

  $RegistrationRequestBodyCopyWith<$Res> get body;
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(_Register _value, $Res Function(_Register) _then)
      : super(_value, (v) => _then(v as _Register));

  @override
  _Register get _value => super._value as _Register;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_Register(
      body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as RegistrationRequestBody,
    ));
  }

  @override
  $RegistrationRequestBodyCopyWith<$Res> get body {
    return $RegistrationRequestBodyCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
class _$_Register implements _Register {
  const _$_Register(this.body);

  @override
  final RegistrationRequestBody body;

  @override
  String toString() {
    return 'AuthEvent.register(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Register &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody body) login,
    required TResult Function(RegistrationRequestBody body) register,
    required TResult Function() logout,
    required TResult Function() recoveryPassword,
    required TResult Function(ForgotPasswordBody body) fogotPassword,
  }) {
    return register(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody body)? login,
    TResult Function(RegistrationRequestBody body)? register,
    TResult Function()? logout,
    TResult Function()? recoveryPassword,
    TResult Function(ForgotPasswordBody body)? fogotPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RecoveryPassword value) recoveryPassword,
    required TResult Function(_ForgotPassword value) fogotPassword,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_RecoveryPassword value)? recoveryPassword,
    TResult Function(_ForgotPassword value)? fogotPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(RegistrationRequestBody body) = _$_Register;

  RegistrationRequestBody get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterCopyWith<_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogoutCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) then) =
      __$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(_Logout _value, $Res Function(_Logout) _then)
      : super(_value, (v) => _then(v as _Logout));

  @override
  _Logout get _value => super._value as _Logout;
}

/// @nodoc
class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody body) login,
    required TResult Function(RegistrationRequestBody body) register,
    required TResult Function() logout,
    required TResult Function() recoveryPassword,
    required TResult Function(ForgotPasswordBody body) fogotPassword,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody body)? login,
    TResult Function(RegistrationRequestBody body)? register,
    TResult Function()? logout,
    TResult Function()? recoveryPassword,
    TResult Function(ForgotPasswordBody body)? fogotPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RecoveryPassword value) recoveryPassword,
    required TResult Function(_ForgotPassword value) fogotPassword,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_RecoveryPassword value)? recoveryPassword,
    TResult Function(_ForgotPassword value)? fogotPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$RecoveryPasswordCopyWith<$Res> {
  factory _$RecoveryPasswordCopyWith(
          _RecoveryPassword value, $Res Function(_RecoveryPassword) then) =
      __$RecoveryPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$RecoveryPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$RecoveryPasswordCopyWith<$Res> {
  __$RecoveryPasswordCopyWithImpl(
      _RecoveryPassword _value, $Res Function(_RecoveryPassword) _then)
      : super(_value, (v) => _then(v as _RecoveryPassword));

  @override
  _RecoveryPassword get _value => super._value as _RecoveryPassword;
}

/// @nodoc
class _$_RecoveryPassword implements _RecoveryPassword {
  const _$_RecoveryPassword();

  @override
  String toString() {
    return 'AuthEvent.recoveryPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RecoveryPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody body) login,
    required TResult Function(RegistrationRequestBody body) register,
    required TResult Function() logout,
    required TResult Function() recoveryPassword,
    required TResult Function(ForgotPasswordBody body) fogotPassword,
  }) {
    return recoveryPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody body)? login,
    TResult Function(RegistrationRequestBody body)? register,
    TResult Function()? logout,
    TResult Function()? recoveryPassword,
    TResult Function(ForgotPasswordBody body)? fogotPassword,
    required TResult orElse(),
  }) {
    if (recoveryPassword != null) {
      return recoveryPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RecoveryPassword value) recoveryPassword,
    required TResult Function(_ForgotPassword value) fogotPassword,
  }) {
    return recoveryPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_RecoveryPassword value)? recoveryPassword,
    TResult Function(_ForgotPassword value)? fogotPassword,
    required TResult orElse(),
  }) {
    if (recoveryPassword != null) {
      return recoveryPassword(this);
    }
    return orElse();
  }
}

abstract class _RecoveryPassword implements AuthEvent {
  const factory _RecoveryPassword() = _$_RecoveryPassword;
}

/// @nodoc
abstract class _$ForgotPasswordCopyWith<$Res> {
  factory _$ForgotPasswordCopyWith(
          _ForgotPassword value, $Res Function(_ForgotPassword) then) =
      __$ForgotPasswordCopyWithImpl<$Res>;
  $Res call({ForgotPasswordBody body});

  $ForgotPasswordBodyCopyWith<$Res> get body;
}

/// @nodoc
class __$ForgotPasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$ForgotPasswordCopyWith<$Res> {
  __$ForgotPasswordCopyWithImpl(
      _ForgotPassword _value, $Res Function(_ForgotPassword) _then)
      : super(_value, (v) => _then(v as _ForgotPassword));

  @override
  _ForgotPassword get _value => super._value as _ForgotPassword;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_ForgotPassword(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordBody,
    ));
  }

  @override
  $ForgotPasswordBodyCopyWith<$Res> get body {
    return $ForgotPasswordBodyCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
class _$_ForgotPassword implements _ForgotPassword {
  const _$_ForgotPassword({required this.body});

  @override
  final ForgotPasswordBody body;

  @override
  String toString() {
    return 'AuthEvent.fogotPassword(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgotPassword &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordCopyWith<_ForgotPassword> get copyWith =>
      __$ForgotPasswordCopyWithImpl<_ForgotPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LoginRequestBody body) login,
    required TResult Function(RegistrationRequestBody body) register,
    required TResult Function() logout,
    required TResult Function() recoveryPassword,
    required TResult Function(ForgotPasswordBody body) fogotPassword,
  }) {
    return fogotPassword(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LoginRequestBody body)? login,
    TResult Function(RegistrationRequestBody body)? register,
    TResult Function()? logout,
    TResult Function()? recoveryPassword,
    TResult Function(ForgotPasswordBody body)? fogotPassword,
    required TResult orElse(),
  }) {
    if (fogotPassword != null) {
      return fogotPassword(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_RecoveryPassword value) recoveryPassword,
    required TResult Function(_ForgotPassword value) fogotPassword,
  }) {
    return fogotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_RecoveryPassword value)? recoveryPassword,
    TResult Function(_ForgotPassword value)? fogotPassword,
    required TResult orElse(),
  }) {
    if (fogotPassword != null) {
      return fogotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements AuthEvent {
  const factory _ForgotPassword({required ForgotPasswordBody body}) =
      _$_ForgotPassword;

  ForgotPasswordBody get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ForgotPasswordCopyWith<_ForgotPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call() {
    return const _AuthState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {}

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
abstract class _$AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;
}

/// @nodoc
class _$_AuthState implements _AuthState {
  const _$_AuthState();

  @override
  String toString() {
    return 'AuthState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AuthState implements AuthState {
  const factory _AuthState() = _$_AuthState;
}
