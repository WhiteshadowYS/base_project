// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageHome _$LanguageHomeFromJson(Map<String, dynamic> json) {
  return _LanguageHome.fromJson(json);
}

/// @nodoc
class _$LanguageHomeTearOff {
  const _$LanguageHomeTearOff();

  _LanguageHome call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body}) {
    return _LanguageHome(
      title: title,
      body: body,
    );
  }

  LanguageHome fromJson(Map<String, Object> json) {
    return LanguageHome.fromJson(json);
  }
}

/// @nodoc
const $LanguageHome = _$LanguageHomeTearOff();

/// @nodoc
mixin _$LanguageHome {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageHomeCopyWith<LanguageHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageHomeCopyWith<$Res> {
  factory $LanguageHomeCopyWith(
          LanguageHome value, $Res Function(LanguageHome) then) =
      _$LanguageHomeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class _$LanguageHomeCopyWithImpl<$Res> implements $LanguageHomeCopyWith<$Res> {
  _$LanguageHomeCopyWithImpl(this._value, this._then);

  final LanguageHome _value;
  // ignore: unused_field
  final $Res Function(LanguageHome) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageHomeCopyWith<$Res>
    implements $LanguageHomeCopyWith<$Res> {
  factory _$LanguageHomeCopyWith(
          _LanguageHome value, $Res Function(_LanguageHome) then) =
      __$LanguageHomeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class __$LanguageHomeCopyWithImpl<$Res> extends _$LanguageHomeCopyWithImpl<$Res>
    implements _$LanguageHomeCopyWith<$Res> {
  __$LanguageHomeCopyWithImpl(
      _LanguageHome _value, $Res Function(_LanguageHome) _then)
      : super(_value, (v) => _then(v as _LanguageHome));

  @override
  _LanguageHome get _value => super._value as _LanguageHome;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_LanguageHome(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguageHome implements _LanguageHome {
  const _$_LanguageHome(
      {@JsonKey(name: 'title') this.title, @JsonKey(name: 'body') this.body});

  factory _$_LanguageHome.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageHomeFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;

  @override
  String toString() {
    return 'LanguageHome(title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageHome &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$LanguageHomeCopyWith<_LanguageHome> get copyWith =>
      __$LanguageHomeCopyWithImpl<_LanguageHome>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageHomeToJson(this);
  }
}

abstract class _LanguageHome implements LanguageHome {
  const factory _LanguageHome(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body}) = _$_LanguageHome;

  factory _LanguageHome.fromJson(Map<String, dynamic> json) =
      _$_LanguageHome.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageHomeCopyWith<_LanguageHome> get copyWith =>
      throw _privateConstructorUsedError;
}
