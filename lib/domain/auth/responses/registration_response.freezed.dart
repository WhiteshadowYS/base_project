// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'registration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationResponse _$RegistrationResponseFromJson(Map<String, dynamic> json) {
  return _RegistrationResponse.fromJson(json);
}

/// @nodoc
class _$RegistrationResponseTearOff {
  const _$RegistrationResponseTearOff();

  _RegistrationResponse call({@JsonKey(name: 'created') bool? status}) {
    return _RegistrationResponse(
      status: status,
    );
  }

  RegistrationResponse fromJson(Map<String, Object> json) {
    return RegistrationResponse.fromJson(json);
  }
}

/// @nodoc
const $RegistrationResponse = _$RegistrationResponseTearOff();

/// @nodoc
mixin _$RegistrationResponse {
  @JsonKey(name: 'created')
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationResponseCopyWith<RegistrationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationResponseCopyWith<$Res> {
  factory $RegistrationResponseCopyWith(RegistrationResponse value,
          $Res Function(RegistrationResponse) then) =
      _$RegistrationResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'created') bool? status});
}

/// @nodoc
class _$RegistrationResponseCopyWithImpl<$Res>
    implements $RegistrationResponseCopyWith<$Res> {
  _$RegistrationResponseCopyWithImpl(this._value, this._then);

  final RegistrationResponse _value;
  // ignore: unused_field
  final $Res Function(RegistrationResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$RegistrationResponseCopyWith<$Res>
    implements $RegistrationResponseCopyWith<$Res> {
  factory _$RegistrationResponseCopyWith(_RegistrationResponse value,
          $Res Function(_RegistrationResponse) then) =
      __$RegistrationResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'created') bool? status});
}

/// @nodoc
class __$RegistrationResponseCopyWithImpl<$Res>
    extends _$RegistrationResponseCopyWithImpl<$Res>
    implements _$RegistrationResponseCopyWith<$Res> {
  __$RegistrationResponseCopyWithImpl(
      _RegistrationResponse _value, $Res Function(_RegistrationResponse) _then)
      : super(_value, (v) => _then(v as _RegistrationResponse));

  @override
  _RegistrationResponse get _value => super._value as _RegistrationResponse;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_RegistrationResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_RegistrationResponse implements _RegistrationResponse {
  const _$_RegistrationResponse({@JsonKey(name: 'created') this.status});

  factory _$_RegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_RegistrationResponseFromJson(json);

  @override
  @JsonKey(name: 'created')
  final bool? status;

  @override
  String toString() {
    return 'RegistrationResponse(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistrationResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$RegistrationResponseCopyWith<_RegistrationResponse> get copyWith =>
      __$RegistrationResponseCopyWithImpl<_RegistrationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegistrationResponseToJson(this);
  }
}

abstract class _RegistrationResponse implements RegistrationResponse {
  const factory _RegistrationResponse(
      {@JsonKey(name: 'created') bool? status}) = _$_RegistrationResponse;

  factory _RegistrationResponse.fromJson(Map<String, dynamic> json) =
      _$_RegistrationResponse.fromJson;

  @override
  @JsonKey(name: 'created')
  bool? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationResponseCopyWith<_RegistrationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
