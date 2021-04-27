// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_payments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguagePayments _$LanguagePaymentsFromJson(Map<String, dynamic> json) {
  return _LanguagePayments.fromJson(json);
}

/// @nodoc
class _$LanguagePaymentsTearOff {
  const _$LanguagePaymentsTearOff();

  _LanguagePayments call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'no_transactions') String? noTransactions}) {
    return _LanguagePayments(
      title: title,
      noTransactions: noTransactions,
    );
  }

  LanguagePayments fromJson(Map<String, Object> json) {
    return LanguagePayments.fromJson(json);
  }
}

/// @nodoc
const $LanguagePayments = _$LanguagePaymentsTearOff();

/// @nodoc
mixin _$LanguagePayments {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_transactions')
  String? get noTransactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguagePaymentsCopyWith<LanguagePayments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagePaymentsCopyWith<$Res> {
  factory $LanguagePaymentsCopyWith(
          LanguagePayments value, $Res Function(LanguagePayments) then) =
      _$LanguagePaymentsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'no_transactions') String? noTransactions});
}

/// @nodoc
class _$LanguagePaymentsCopyWithImpl<$Res>
    implements $LanguagePaymentsCopyWith<$Res> {
  _$LanguagePaymentsCopyWithImpl(this._value, this._then);

  final LanguagePayments _value;
  // ignore: unused_field
  final $Res Function(LanguagePayments) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? noTransactions = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      noTransactions: noTransactions == freezed
          ? _value.noTransactions
          : noTransactions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguagePaymentsCopyWith<$Res>
    implements $LanguagePaymentsCopyWith<$Res> {
  factory _$LanguagePaymentsCopyWith(
          _LanguagePayments value, $Res Function(_LanguagePayments) then) =
      __$LanguagePaymentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'no_transactions') String? noTransactions});
}

/// @nodoc
class __$LanguagePaymentsCopyWithImpl<$Res>
    extends _$LanguagePaymentsCopyWithImpl<$Res>
    implements _$LanguagePaymentsCopyWith<$Res> {
  __$LanguagePaymentsCopyWithImpl(
      _LanguagePayments _value, $Res Function(_LanguagePayments) _then)
      : super(_value, (v) => _then(v as _LanguagePayments));

  @override
  _LanguagePayments get _value => super._value as _LanguagePayments;

  @override
  $Res call({
    Object? title = freezed,
    Object? noTransactions = freezed,
  }) {
    return _then(_LanguagePayments(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      noTransactions: noTransactions == freezed
          ? _value.noTransactions
          : noTransactions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguagePayments implements _LanguagePayments {
  const _$_LanguagePayments(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'no_transactions') this.noTransactions});

  factory _$_LanguagePayments.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguagePaymentsFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'no_transactions')
  final String? noTransactions;

  @override
  String toString() {
    return 'LanguagePayments(title: $title, noTransactions: $noTransactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguagePayments &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.noTransactions, noTransactions) ||
                const DeepCollectionEquality()
                    .equals(other.noTransactions, noTransactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(noTransactions);

  @JsonKey(ignore: true)
  @override
  _$LanguagePaymentsCopyWith<_LanguagePayments> get copyWith =>
      __$LanguagePaymentsCopyWithImpl<_LanguagePayments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguagePaymentsToJson(this);
  }
}

abstract class _LanguagePayments implements LanguagePayments {
  const factory _LanguagePayments(
          {@JsonKey(name: 'title') String? title,
          @JsonKey(name: 'no_transactions') String? noTransactions}) =
      _$_LanguagePayments;

  factory _LanguagePayments.fromJson(Map<String, dynamic> json) =
      _$_LanguagePayments.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'no_transactions')
  String? get noTransactions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguagePaymentsCopyWith<_LanguagePayments> get copyWith =>
      throw _privateConstructorUsedError;
}
