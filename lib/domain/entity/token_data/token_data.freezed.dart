// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'token_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenData _$TokenDataFromJson(Map<String, dynamic> json) {
  return _TokenData.fromJson(json);
}

/// @nodoc
class _$TokenDataTearOff {
  const _$TokenDataTearOff();

  _TokenData call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'url') String? url}) {
    return _TokenData(
      name: name,
      url: url,
    );
  }

  TokenData fromJson(Map<String, Object> json) {
    return TokenData.fromJson(json);
  }
}

/// @nodoc
const $TokenData = _$TokenDataTearOff();

/// @nodoc
mixin _$TokenData {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDataCopyWith<TokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDataCopyWith<$Res> {
  factory $TokenDataCopyWith(TokenData value, $Res Function(TokenData) then) =
      _$TokenDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$TokenDataCopyWithImpl<$Res> implements $TokenDataCopyWith<$Res> {
  _$TokenDataCopyWithImpl(this._value, this._then);

  final TokenData _value;
  // ignore: unused_field
  final $Res Function(TokenData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TokenDataCopyWith<$Res> implements $TokenDataCopyWith<$Res> {
  factory _$TokenDataCopyWith(
          _TokenData value, $Res Function(_TokenData) then) =
      __$TokenDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$TokenDataCopyWithImpl<$Res> extends _$TokenDataCopyWithImpl<$Res>
    implements _$TokenDataCopyWith<$Res> {
  __$TokenDataCopyWithImpl(_TokenData _value, $Res Function(_TokenData) _then)
      : super(_value, (v) => _then(v as _TokenData));

  @override
  _TokenData get _value => super._value as _TokenData;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_TokenData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_TokenData implements _TokenData {
  const _$_TokenData(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'url') this.url});

  factory _$_TokenData.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenDataFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'TokenData(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$TokenDataCopyWith<_TokenData> get copyWith =>
      __$TokenDataCopyWithImpl<_TokenData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenDataToJson(this);
  }
}

abstract class _TokenData implements TokenData {
  const factory _TokenData(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'url') String? url}) = _$_TokenData;

  factory _TokenData.fromJson(Map<String, dynamic> json) =
      _$_TokenData.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TokenDataCopyWith<_TokenData> get copyWith =>
      throw _privateConstructorUsedError;
}
