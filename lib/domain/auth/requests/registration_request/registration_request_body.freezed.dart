// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'registration_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationRequestBody _$RegistrationRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _RegistrationRequestBody.fromJson(json);
}

/// @nodoc
class _$RegistrationRequestBodyTearOff {
  const _$RegistrationRequestBodyTearOff();

  _RegistrationRequestBody call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phone,
      @JsonKey(name: 'password') String? password}) {
    return _RegistrationRequestBody(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      password: password,
    );
  }

  RegistrationRequestBody fromJson(Map<String, Object> json) {
    return RegistrationRequestBody.fromJson(json);
  }
}

/// @nodoc
const $RegistrationRequestBody = _$RegistrationRequestBodyTearOff();

/// @nodoc
mixin _$RegistrationRequestBody {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationRequestBodyCopyWith<RegistrationRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRequestBodyCopyWith<$Res> {
  factory $RegistrationRequestBodyCopyWith(RegistrationRequestBody value,
          $Res Function(RegistrationRequestBody) then) =
      _$RegistrationRequestBodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phone,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$RegistrationRequestBodyCopyWithImpl<$Res>
    implements $RegistrationRequestBodyCopyWith<$Res> {
  _$RegistrationRequestBodyCopyWithImpl(this._value, this._then);

  final RegistrationRequestBody _value;
  // ignore: unused_field
  final $Res Function(RegistrationRequestBody) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RegistrationRequestBodyCopyWith<$Res>
    implements $RegistrationRequestBodyCopyWith<$Res> {
  factory _$RegistrationRequestBodyCopyWith(_RegistrationRequestBody value,
          $Res Function(_RegistrationRequestBody) then) =
      __$RegistrationRequestBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phone,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$RegistrationRequestBodyCopyWithImpl<$Res>
    extends _$RegistrationRequestBodyCopyWithImpl<$Res>
    implements _$RegistrationRequestBodyCopyWith<$Res> {
  __$RegistrationRequestBodyCopyWithImpl(_RegistrationRequestBody _value,
      $Res Function(_RegistrationRequestBody) _then)
      : super(_value, (v) => _then(v as _RegistrationRequestBody));

  @override
  _RegistrationRequestBody get _value =>
      super._value as _RegistrationRequestBody;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_RegistrationRequestBody(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_RegistrationRequestBody extends _RegistrationRequestBody {
  const _$_RegistrationRequestBody(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone_number') this.phone,
      @JsonKey(name: 'password') this.password})
      : super._();

  factory _$_RegistrationRequestBody.fromJson(Map<String, dynamic> json) =>
      _$_$_RegistrationRequestBodyFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone_number')
  final String? phone;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'RegistrationRequestBody(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistrationRequestBody &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$RegistrationRequestBodyCopyWith<_RegistrationRequestBody> get copyWith =>
      __$RegistrationRequestBodyCopyWithImpl<_RegistrationRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegistrationRequestBodyToJson(this);
  }
}

abstract class _RegistrationRequestBody extends RegistrationRequestBody {
  const factory _RegistrationRequestBody(
          {@JsonKey(name: 'first_name') String? firstName,
          @JsonKey(name: 'last_name') String? lastName,
          @JsonKey(name: 'email') String? email,
          @JsonKey(name: 'phone_number') String? phone,
          @JsonKey(name: 'password') String? password}) =
      _$_RegistrationRequestBody;
  const _RegistrationRequestBody._() : super._();

  factory _RegistrationRequestBody.fromJson(Map<String, dynamic> json) =
      _$_RegistrationRequestBody.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_number')
  String? get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationRequestBodyCopyWith<_RegistrationRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
