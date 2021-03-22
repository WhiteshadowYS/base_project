// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasePresponse _$BasePresponseFromJson(Map<String, dynamic> json) {
  return _BasePresponse.fromJson(json);
}

/// @nodoc
class _$BasePresponseTearOff {
  const _$BasePresponseTearOff();

  _BasePresponse call(
      {@JsonKey(name: 'count') num? count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previus') String? previus,
      @JsonKey(name: 'results') List<dynamic>? results}) {
    return _BasePresponse(
      count: count,
      next: next,
      previus: previus,
      results: results,
    );
  }

  BasePresponse fromJson(Map<String, Object> json) {
    return BasePresponse.fromJson(json);
  }
}

/// @nodoc
const $BasePresponse = _$BasePresponseTearOff();

/// @nodoc
mixin _$BasePresponse {
  @JsonKey(name: 'count')
  num? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previus')
  String? get previus => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<dynamic>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasePresponseCopyWith<BasePresponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePresponseCopyWith<$Res> {
  factory $BasePresponseCopyWith(
          BasePresponse value, $Res Function(BasePresponse) then) =
      _$BasePresponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'count') num? count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previus') String? previus,
      @JsonKey(name: 'results') List<dynamic>? results});
}

/// @nodoc
class _$BasePresponseCopyWithImpl<$Res>
    implements $BasePresponseCopyWith<$Res> {
  _$BasePresponseCopyWithImpl(this._value, this._then);

  final BasePresponse _value;
  // ignore: unused_field
  final $Res Function(BasePresponse) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previus = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as num?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previus: previus == freezed
          ? _value.previus
          : previus // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$BasePresponseCopyWith<$Res>
    implements $BasePresponseCopyWith<$Res> {
  factory _$BasePresponseCopyWith(
          _BasePresponse value, $Res Function(_BasePresponse) then) =
      __$BasePresponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'count') num? count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previus') String? previus,
      @JsonKey(name: 'results') List<dynamic>? results});
}

/// @nodoc
class __$BasePresponseCopyWithImpl<$Res>
    extends _$BasePresponseCopyWithImpl<$Res>
    implements _$BasePresponseCopyWith<$Res> {
  __$BasePresponseCopyWithImpl(
      _BasePresponse _value, $Res Function(_BasePresponse) _then)
      : super(_value, (v) => _then(v as _BasePresponse));

  @override
  _BasePresponse get _value => super._value as _BasePresponse;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previus = freezed,
    Object? results = freezed,
  }) {
    return _then(_BasePresponse(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as num?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previus: previus == freezed
          ? _value.previus
          : previus // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_BasePresponse implements _BasePresponse {
  const _$_BasePresponse(
      {@JsonKey(name: 'count') this.count,
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'previus') this.previus,
      @JsonKey(name: 'results') this.results});

  factory _$_BasePresponse.fromJson(Map<String, dynamic> json) =>
      _$_$_BasePresponseFromJson(json);

  @override
  @JsonKey(name: 'count')
  final num? count;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previus')
  final String? previus;
  @override
  @JsonKey(name: 'results')
  final List<dynamic>? results;

  @override
  String toString() {
    return 'BasePresponse(count: $count, next: $next, previus: $previus, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BasePresponse &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.previus, previus) ||
                const DeepCollectionEquality()
                    .equals(other.previus, previus)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(previus) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$BasePresponseCopyWith<_BasePresponse> get copyWith =>
      __$BasePresponseCopyWithImpl<_BasePresponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BasePresponseToJson(this);
  }
}

abstract class _BasePresponse implements BasePresponse {
  const factory _BasePresponse(
      {@JsonKey(name: 'count') num? count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previus') String? previus,
      @JsonKey(name: 'results') List<dynamic>? results}) = _$_BasePresponse;

  factory _BasePresponse.fromJson(Map<String, dynamic> json) =
      _$_BasePresponse.fromJson;

  @override
  @JsonKey(name: 'count')
  num? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'previus')
  String? get previus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'results')
  List<dynamic>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BasePresponseCopyWith<_BasePresponse> get copyWith =>
      throw _privateConstructorUsedError;
}
