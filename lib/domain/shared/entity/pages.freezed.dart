// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pages _$PagesFromJson(Map<String, dynamic> json) {
  return _Pages.fromJson(json);
}

/// @nodoc
class _$PagesTearOff {
  const _$PagesTearOff();

  _Pages call(
      {@JsonKey(name: 'next') int? next,
      @JsonKey(name: 'current') int? current,
      @JsonKey(name: 'previous') int? previous}) {
    return _Pages(
      next: next,
      current: current,
      previous: previous,
    );
  }

  Pages fromJson(Map<String, Object> json) {
    return Pages.fromJson(json);
  }
}

/// @nodoc
const $Pages = _$PagesTearOff();

/// @nodoc
mixin _$Pages {
  @JsonKey(name: 'next')
  int? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'current')
  int? get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  int? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagesCopyWith<Pages> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagesCopyWith<$Res> {
  factory $PagesCopyWith(Pages value, $Res Function(Pages) then) =
      _$PagesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'next') int? next,
      @JsonKey(name: 'current') int? current,
      @JsonKey(name: 'previous') int? previous});
}

/// @nodoc
class _$PagesCopyWithImpl<$Res> implements $PagesCopyWith<$Res> {
  _$PagesCopyWithImpl(this._value, this._then);

  final Pages _value;
  // ignore: unused_field
  final $Res Function(Pages) _then;

  @override
  $Res call({
    Object? next = freezed,
    Object? current = freezed,
    Object? previous = freezed,
  }) {
    return _then(_value.copyWith(
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PagesCopyWith<$Res> implements $PagesCopyWith<$Res> {
  factory _$PagesCopyWith(_Pages value, $Res Function(_Pages) then) =
      __$PagesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'next') int? next,
      @JsonKey(name: 'current') int? current,
      @JsonKey(name: 'previous') int? previous});
}

/// @nodoc
class __$PagesCopyWithImpl<$Res> extends _$PagesCopyWithImpl<$Res>
    implements _$PagesCopyWith<$Res> {
  __$PagesCopyWithImpl(_Pages _value, $Res Function(_Pages) _then)
      : super(_value, (v) => _then(v as _Pages));

  @override
  _Pages get _value => super._value as _Pages;

  @override
  $Res call({
    Object? next = freezed,
    Object? current = freezed,
    Object? previous = freezed,
  }) {
    return _then(_Pages(
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_Pages extends _Pages {
  const _$_Pages(
      {@JsonKey(name: 'next') this.next,
      @JsonKey(name: 'current') this.current,
      @JsonKey(name: 'previous') this.previous})
      : super._();

  factory _$_Pages.fromJson(Map<String, dynamic> json) =>
      _$_$_PagesFromJson(json);

  @override
  @JsonKey(name: 'next')
  final int? next;
  @override
  @JsonKey(name: 'current')
  final int? current;
  @override
  @JsonKey(name: 'previous')
  final int? previous;

  @override
  String toString() {
    return 'Pages(next: $next, current: $current, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pages &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(previous);

  @JsonKey(ignore: true)
  @override
  _$PagesCopyWith<_Pages> get copyWith =>
      __$PagesCopyWithImpl<_Pages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PagesToJson(this);
  }
}

abstract class _Pages extends Pages {
  const factory _Pages(
      {@JsonKey(name: 'next') int? next,
      @JsonKey(name: 'current') int? current,
      @JsonKey(name: 'previous') int? previous}) = _$_Pages;
  const _Pages._() : super._();

  factory _Pages.fromJson(Map<String, dynamic> json) = _$_Pages.fromJson;

  @override
  @JsonKey(name: 'next')
  int? get next => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'current')
  int? get current => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'previous')
  int? get previous => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PagesCopyWith<_Pages> get copyWith => throw _privateConstructorUsedError;
}
