// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'base_pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasePokemon _$BasePokemonFromJson(Map<String, dynamic> json) {
  return _BasePokemon.fromJson(json);
}

/// @nodoc
class _$BasePokemonTearOff {
  const _$BasePokemonTearOff();

  _BasePokemon call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'url') String? url}) {
    return _BasePokemon(
      name: name,
      url: url,
    );
  }

  BasePokemon fromJson(Map<String, Object> json) {
    return BasePokemon.fromJson(json);
  }
}

/// @nodoc
const $BasePokemon = _$BasePokemonTearOff();

/// @nodoc
mixin _$BasePokemon {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasePokemonCopyWith<BasePokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePokemonCopyWith<$Res> {
  factory $BasePokemonCopyWith(
          BasePokemon value, $Res Function(BasePokemon) then) =
      _$BasePokemonCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$BasePokemonCopyWithImpl<$Res> implements $BasePokemonCopyWith<$Res> {
  _$BasePokemonCopyWithImpl(this._value, this._then);

  final BasePokemon _value;
  // ignore: unused_field
  final $Res Function(BasePokemon) _then;

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
abstract class _$BasePokemonCopyWith<$Res>
    implements $BasePokemonCopyWith<$Res> {
  factory _$BasePokemonCopyWith(
          _BasePokemon value, $Res Function(_BasePokemon) then) =
      __$BasePokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$BasePokemonCopyWithImpl<$Res> extends _$BasePokemonCopyWithImpl<$Res>
    implements _$BasePokemonCopyWith<$Res> {
  __$BasePokemonCopyWithImpl(
      _BasePokemon _value, $Res Function(_BasePokemon) _then)
      : super(_value, (v) => _then(v as _BasePokemon));

  @override
  _BasePokemon get _value => super._value as _BasePokemon;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_BasePokemon(
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
class _$_BasePokemon implements _BasePokemon {
  const _$_BasePokemon(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'url') this.url});

  factory _$_BasePokemon.fromJson(Map<String, dynamic> json) =>
      _$_$_BasePokemonFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'BasePokemon(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BasePokemon &&
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
  _$BasePokemonCopyWith<_BasePokemon> get copyWith =>
      __$BasePokemonCopyWithImpl<_BasePokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BasePokemonToJson(this);
  }
}

abstract class _BasePokemon implements BasePokemon {
  const factory _BasePokemon(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'url') String? url}) = _$_BasePokemon;

  factory _BasePokemon.fromJson(Map<String, dynamic> json) =
      _$_BasePokemon.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BasePokemonCopyWith<_BasePokemon> get copyWith =>
      throw _privateConstructorUsedError;
}
