// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_terms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageTerms _$LanguageTermsFromJson(Map<String, dynamic> json) {
  return _LanguageTerms.fromJson(json);
}

/// @nodoc
class _$LanguageTermsTearOff {
  const _$LanguageTermsTearOff();

  _LanguageTerms call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content}) {
    return _LanguageTerms(
      title: title,
      content: content,
    );
  }

  LanguageTerms fromJson(Map<String, Object> json) {
    return LanguageTerms.fromJson(json);
  }
}

/// @nodoc
const $LanguageTerms = _$LanguageTermsTearOff();

/// @nodoc
mixin _$LanguageTerms {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageTermsCopyWith<LanguageTerms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageTermsCopyWith<$Res> {
  factory $LanguageTermsCopyWith(
          LanguageTerms value, $Res Function(LanguageTerms) then) =
      _$LanguageTermsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content});
}

/// @nodoc
class _$LanguageTermsCopyWithImpl<$Res>
    implements $LanguageTermsCopyWith<$Res> {
  _$LanguageTermsCopyWithImpl(this._value, this._then);

  final LanguageTerms _value;
  // ignore: unused_field
  final $Res Function(LanguageTerms) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageTermsCopyWith<$Res>
    implements $LanguageTermsCopyWith<$Res> {
  factory _$LanguageTermsCopyWith(
          _LanguageTerms value, $Res Function(_LanguageTerms) then) =
      __$LanguageTermsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content});
}

/// @nodoc
class __$LanguageTermsCopyWithImpl<$Res>
    extends _$LanguageTermsCopyWithImpl<$Res>
    implements _$LanguageTermsCopyWith<$Res> {
  __$LanguageTermsCopyWithImpl(
      _LanguageTerms _value, $Res Function(_LanguageTerms) _then)
      : super(_value, (v) => _then(v as _LanguageTerms));

  @override
  _LanguageTerms get _value => super._value as _LanguageTerms;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
  }) {
    return _then(_LanguageTerms(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguageTerms implements _LanguageTerms {
  const _$_LanguageTerms(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'content') this.content});

  factory _$_LanguageTerms.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageTermsFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'content')
  final String? content;

  @override
  String toString() {
    return 'LanguageTerms(title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageTerms &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$LanguageTermsCopyWith<_LanguageTerms> get copyWith =>
      __$LanguageTermsCopyWithImpl<_LanguageTerms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageTermsToJson(this);
  }
}

abstract class _LanguageTerms implements LanguageTerms {
  const factory _LanguageTerms(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content}) = _$_LanguageTerms;

  factory _LanguageTerms.fromJson(Map<String, dynamic> json) =
      _$_LanguageTerms.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageTermsCopyWith<_LanguageTerms> get copyWith =>
      throw _privateConstructorUsedError;
}
