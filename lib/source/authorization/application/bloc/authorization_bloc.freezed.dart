// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthorizationEventTearOff {
  const _$AuthorizationEventTearOff();

  _SignInEvent signIn(SignInContract contract) {
    return _SignInEvent(
      contract,
    );
  }

  _SignUpEvent signUp(SignUpContract contract) {
    return _SignUpEvent(
      contract,
    );
  }

  _SignOutEvent signOut(SignOutContract contract) {
    return _SignOutEvent(
      contract,
    );
  }
}

/// @nodoc
const $AuthorizationEvent = _$AuthorizationEventTearOff();

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInContract contract) signIn,
    required TResult Function(SignUpContract contract) signUp,
    required TResult Function(SignOutContract contract) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInContract contract)? signIn,
    TResult Function(SignUpContract contract)? signUp,
    TResult Function(SignOutContract contract)? signOut,
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignUpEvent value)? signUp,
    TResult Function(_SignOutEvent value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  final AuthorizationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthorizationEvent) _then;
}

/// @nodoc
abstract class _$SignInEventCopyWith<$Res> {
  factory _$SignInEventCopyWith(
          _SignInEvent value, $Res Function(_SignInEvent) then) =
      __$SignInEventCopyWithImpl<$Res>;
  $Res call({SignInContract contract});
}

/// @nodoc
class __$SignInEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements _$SignInEventCopyWith<$Res> {
  __$SignInEventCopyWithImpl(
      _SignInEvent _value, $Res Function(_SignInEvent) _then)
      : super(_value, (v) => _then(v as _SignInEvent));

  @override
  _SignInEvent get _value => super._value as _SignInEvent;

  @override
  $Res call({
    Object? contract = freezed,
  }) {
    return _then(_SignInEvent(
      contract == freezed
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as SignInContract,
    ));
  }
}

/// @nodoc

@With(SignInEvent)
class _$_SignInEvent with SignInEvent implements _SignInEvent {
  const _$_SignInEvent(this.contract);

  @override
  final SignInContract contract;

  @override
  String toString() {
    return 'AuthorizationEvent.signIn(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInEvent &&
            (identical(other.contract, contract) ||
                const DeepCollectionEquality()
                    .equals(other.contract, contract)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contract);

  @JsonKey(ignore: true)
  @override
  _$SignInEventCopyWith<_SignInEvent> get copyWith =>
      __$SignInEventCopyWithImpl<_SignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInContract contract) signIn,
    required TResult Function(SignUpContract contract) signUp,
    required TResult Function(SignOutContract contract) signOut,
  }) {
    return signIn(contract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInContract contract)? signIn,
    TResult Function(SignUpContract contract)? signUp,
    TResult Function(SignOutContract contract)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(contract);
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

abstract class _SignInEvent implements AuthorizationEvent, SignInEvent {
  const factory _SignInEvent(SignInContract contract) = _$_SignInEvent;

  SignInContract get contract => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignInEventCopyWith<_SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignUpEventCopyWith<$Res> {
  factory _$SignUpEventCopyWith(
          _SignUpEvent value, $Res Function(_SignUpEvent) then) =
      __$SignUpEventCopyWithImpl<$Res>;
  $Res call({SignUpContract contract});
}

/// @nodoc
class __$SignUpEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements _$SignUpEventCopyWith<$Res> {
  __$SignUpEventCopyWithImpl(
      _SignUpEvent _value, $Res Function(_SignUpEvent) _then)
      : super(_value, (v) => _then(v as _SignUpEvent));

  @override
  _SignUpEvent get _value => super._value as _SignUpEvent;

  @override
  $Res call({
    Object? contract = freezed,
  }) {
    return _then(_SignUpEvent(
      contract == freezed
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as SignUpContract,
    ));
  }
}

/// @nodoc

@With(SignUpEvent)
class _$_SignUpEvent with SignUpEvent implements _SignUpEvent {
  const _$_SignUpEvent(this.contract);

  @override
  final SignUpContract contract;

  @override
  String toString() {
    return 'AuthorizationEvent.signUp(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpEvent &&
            (identical(other.contract, contract) ||
                const DeepCollectionEquality()
                    .equals(other.contract, contract)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contract);

  @JsonKey(ignore: true)
  @override
  _$SignUpEventCopyWith<_SignUpEvent> get copyWith =>
      __$SignUpEventCopyWithImpl<_SignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInContract contract) signIn,
    required TResult Function(SignUpContract contract) signUp,
    required TResult Function(SignOutContract contract) signOut,
  }) {
    return signUp(contract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInContract contract)? signIn,
    TResult Function(SignUpContract contract)? signUp,
    TResult Function(SignOutContract contract)? signOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(contract);
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

abstract class _SignUpEvent implements AuthorizationEvent, SignUpEvent {
  const factory _SignUpEvent(SignUpContract contract) = _$_SignUpEvent;

  SignUpContract get contract => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignUpEventCopyWith<_SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignOutEventCopyWith<$Res> {
  factory _$SignOutEventCopyWith(
          _SignOutEvent value, $Res Function(_SignOutEvent) then) =
      __$SignOutEventCopyWithImpl<$Res>;
  $Res call({SignOutContract contract});
}

/// @nodoc
class __$SignOutEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements _$SignOutEventCopyWith<$Res> {
  __$SignOutEventCopyWithImpl(
      _SignOutEvent _value, $Res Function(_SignOutEvent) _then)
      : super(_value, (v) => _then(v as _SignOutEvent));

  @override
  _SignOutEvent get _value => super._value as _SignOutEvent;

  @override
  $Res call({
    Object? contract = freezed,
  }) {
    return _then(_SignOutEvent(
      contract == freezed
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as SignOutContract,
    ));
  }
}

/// @nodoc

@With(SignOutEvent)
class _$_SignOutEvent with SignOutEvent implements _SignOutEvent {
  const _$_SignOutEvent(this.contract);

  @override
  final SignOutContract contract;

  @override
  String toString() {
    return 'AuthorizationEvent.signOut(contract: $contract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignOutEvent &&
            (identical(other.contract, contract) ||
                const DeepCollectionEquality()
                    .equals(other.contract, contract)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contract);

  @JsonKey(ignore: true)
  @override
  _$SignOutEventCopyWith<_SignOutEvent> get copyWith =>
      __$SignOutEventCopyWithImpl<_SignOutEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInContract contract) signIn,
    required TResult Function(SignUpContract contract) signUp,
    required TResult Function(SignOutContract contract) signOut,
  }) {
    return signOut(contract);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInContract contract)? signIn,
    TResult Function(SignUpContract contract)? signUp,
    TResult Function(SignOutContract contract)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(contract);
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

abstract class _SignOutEvent implements AuthorizationEvent, SignOutEvent {
  const factory _SignOutEvent(SignOutContract contract) = _$_SignOutEvent;

  SignOutContract get contract => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignOutEventCopyWith<_SignOutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthorizationStateTearOff {
  const _$AuthorizationStateTearOff();

  _AuthorizationState call(
      {UserRepository? user, UsersRepository? savedUsers}) {
    return _AuthorizationState(
      user: user,
      savedUsers: savedUsers,
    );
  }
}

/// @nodoc
const $AuthorizationState = _$AuthorizationStateTearOff();

/// @nodoc
mixin _$AuthorizationState {
  UserRepository? get user => throw _privateConstructorUsedError;
  UsersRepository? get savedUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizationStateCopyWith<AuthorizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res>;
  $Res call({UserRepository? user, UsersRepository? savedUsers});
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  final AuthorizationState _value;
  // ignore: unused_field
  final $Res Function(AuthorizationState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? savedUsers = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRepository?,
      savedUsers: savedUsers == freezed
          ? _value.savedUsers
          : savedUsers // ignore: cast_nullable_to_non_nullable
              as UsersRepository?,
    ));
  }
}

/// @nodoc
abstract class _$AuthorizationStateCopyWith<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  factory _$AuthorizationStateCopyWith(
          _AuthorizationState value, $Res Function(_AuthorizationState) then) =
      __$AuthorizationStateCopyWithImpl<$Res>;
  @override
  $Res call({UserRepository? user, UsersRepository? savedUsers});
}

/// @nodoc
class __$AuthorizationStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$AuthorizationStateCopyWith<$Res> {
  __$AuthorizationStateCopyWithImpl(
      _AuthorizationState _value, $Res Function(_AuthorizationState) _then)
      : super(_value, (v) => _then(v as _AuthorizationState));

  @override
  _AuthorizationState get _value => super._value as _AuthorizationState;

  @override
  $Res call({
    Object? user = freezed,
    Object? savedUsers = freezed,
  }) {
    return _then(_AuthorizationState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRepository?,
      savedUsers: savedUsers == freezed
          ? _value.savedUsers
          : savedUsers // ignore: cast_nullable_to_non_nullable
              as UsersRepository?,
    ));
  }
}

/// @nodoc

class _$_AuthorizationState extends _AuthorizationState {
  const _$_AuthorizationState({this.user, this.savedUsers}) : super._();

  @override
  final UserRepository? user;
  @override
  final UsersRepository? savedUsers;

  @override
  String toString() {
    return 'AuthorizationState(user: $user, savedUsers: $savedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthorizationState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.savedUsers, savedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.savedUsers, savedUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(savedUsers);

  @JsonKey(ignore: true)
  @override
  _$AuthorizationStateCopyWith<_AuthorizationState> get copyWith =>
      __$AuthorizationStateCopyWithImpl<_AuthorizationState>(this, _$identity);
}

abstract class _AuthorizationState extends AuthorizationState {
  const factory _AuthorizationState(
      {UserRepository? user,
      UsersRepository? savedUsers}) = _$_AuthorizationState;
  const _AuthorizationState._() : super._();

  @override
  UserRepository? get user => throw _privateConstructorUsedError;
  @override
  UsersRepository? get savedUsers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthorizationStateCopyWith<_AuthorizationState> get copyWith =>
      throw _privateConstructorUsedError;
}
