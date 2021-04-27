// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_start.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageStart _$LanguageStartFromJson(Map<String, dynamic> json) {
  return _LanguageStart.fromJson(json);
}

/// @nodoc
class _$LanguageStartTearOff {
  const _$LanguageStartTearOff();

  _LanguageStart call(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'footnote_text') String? footnoteText}) {
    return _LanguageStart(
      content: content,
      footnoteText: footnoteText,
    );
  }

  LanguageStart fromJson(Map<String, Object> json) {
    return LanguageStart.fromJson(json);
  }
}

/// @nodoc
const $LanguageStart = _$LanguageStartTearOff();

/// @nodoc
mixin _$LanguageStart {
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'footnote_text')
  String? get footnoteText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageStartCopyWith<LanguageStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStartCopyWith<$Res> {
  factory $LanguageStartCopyWith(
          LanguageStart value, $Res Function(LanguageStart) then) =
      _$LanguageStartCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'footnote_text') String? footnoteText});
}

/// @nodoc
class _$LanguageStartCopyWithImpl<$Res>
    implements $LanguageStartCopyWith<$Res> {
  _$LanguageStartCopyWithImpl(this._value, this._then);

  final LanguageStart _value;
  // ignore: unused_field
  final $Res Function(LanguageStart) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? footnoteText = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      footnoteText: footnoteText == freezed
          ? _value.footnoteText
          : footnoteText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageStartCopyWith<$Res>
    implements $LanguageStartCopyWith<$Res> {
  factory _$LanguageStartCopyWith(
          _LanguageStart value, $Res Function(_LanguageStart) then) =
      __$LanguageStartCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'footnote_text') String? footnoteText});
}

/// @nodoc
class __$LanguageStartCopyWithImpl<$Res>
    extends _$LanguageStartCopyWithImpl<$Res>
    implements _$LanguageStartCopyWith<$Res> {
  __$LanguageStartCopyWithImpl(
      _LanguageStart _value, $Res Function(_LanguageStart) _then)
      : super(_value, (v) => _then(v as _LanguageStart));

  @override
  _LanguageStart get _value => super._value as _LanguageStart;

  @override
  $Res call({
    Object? content = freezed,
    Object? footnoteText = freezed,
  }) {
    return _then(_LanguageStart(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      footnoteText: footnoteText == freezed
          ? _value.footnoteText
          : footnoteText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguageStart implements _LanguageStart {
  const _$_LanguageStart(
      {@JsonKey(name: 'content') this.content,
      @JsonKey(name: 'footnote_text') this.footnoteText});

  factory _$_LanguageStart.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageStartFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'footnote_text')
  final String? footnoteText;

  @override
  String toString() {
    return 'LanguageStart(content: $content, footnoteText: $footnoteText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageStart &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.footnoteText, footnoteText) ||
                const DeepCollectionEquality()
                    .equals(other.footnoteText, footnoteText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(footnoteText);

  @JsonKey(ignore: true)
  @override
  _$LanguageStartCopyWith<_LanguageStart> get copyWith =>
      __$LanguageStartCopyWithImpl<_LanguageStart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageStartToJson(this);
  }
}

abstract class _LanguageStart implements LanguageStart {
  const factory _LanguageStart(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'footnote_text') String? footnoteText}) = _$_LanguageStart;

  factory _LanguageStart.fromJson(Map<String, dynamic> json) =
      _$_LanguageStart.fromJson;

  @override
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'footnote_text')
  String? get footnoteText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageStartCopyWith<_LanguageStart> get copyWith =>
      throw _privateConstructorUsedError;
}
