// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageRegister _$LanguageRegisterFromJson(Map<String, dynamic> json) {
  return _LanguageRegister.fromJson(json);
}

/// @nodoc
class _$LanguageRegisterTearOff {
  const _$LanguageRegisterTearOff();

  _LanguageRegister call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'footnote_button') String? footnoteButton}) {
    return _LanguageRegister(
      title: title,
      footnoteButton: footnoteButton,
    );
  }

  LanguageRegister fromJson(Map<String, Object> json) {
    return LanguageRegister.fromJson(json);
  }
}

/// @nodoc
const $LanguageRegister = _$LanguageRegisterTearOff();

/// @nodoc
mixin _$LanguageRegister {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'footnote_button')
  String? get footnoteButton => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageRegisterCopyWith<LanguageRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageRegisterCopyWith<$Res> {
  factory $LanguageRegisterCopyWith(
          LanguageRegister value, $Res Function(LanguageRegister) then) =
      _$LanguageRegisterCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'footnote_button') String? footnoteButton});
}

/// @nodoc
class _$LanguageRegisterCopyWithImpl<$Res>
    implements $LanguageRegisterCopyWith<$Res> {
  _$LanguageRegisterCopyWithImpl(this._value, this._then);

  final LanguageRegister _value;
  // ignore: unused_field
  final $Res Function(LanguageRegister) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? footnoteButton = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      footnoteButton: footnoteButton == freezed
          ? _value.footnoteButton
          : footnoteButton // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageRegisterCopyWith<$Res>
    implements $LanguageRegisterCopyWith<$Res> {
  factory _$LanguageRegisterCopyWith(
          _LanguageRegister value, $Res Function(_LanguageRegister) then) =
      __$LanguageRegisterCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'footnote_button') String? footnoteButton});
}

/// @nodoc
class __$LanguageRegisterCopyWithImpl<$Res>
    extends _$LanguageRegisterCopyWithImpl<$Res>
    implements _$LanguageRegisterCopyWith<$Res> {
  __$LanguageRegisterCopyWithImpl(
      _LanguageRegister _value, $Res Function(_LanguageRegister) _then)
      : super(_value, (v) => _then(v as _LanguageRegister));

  @override
  _LanguageRegister get _value => super._value as _LanguageRegister;

  @override
  $Res call({
    Object? title = freezed,
    Object? footnoteButton = freezed,
  }) {
    return _then(_LanguageRegister(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      footnoteButton: footnoteButton == freezed
          ? _value.footnoteButton
          : footnoteButton // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguageRegister implements _LanguageRegister {
  const _$_LanguageRegister(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'footnote_button') this.footnoteButton});

  factory _$_LanguageRegister.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageRegisterFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'footnote_button')
  final String? footnoteButton;

  @override
  String toString() {
    return 'LanguageRegister(title: $title, footnoteButton: $footnoteButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageRegister &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.footnoteButton, footnoteButton) ||
                const DeepCollectionEquality()
                    .equals(other.footnoteButton, footnoteButton)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(footnoteButton);

  @JsonKey(ignore: true)
  @override
  _$LanguageRegisterCopyWith<_LanguageRegister> get copyWith =>
      __$LanguageRegisterCopyWithImpl<_LanguageRegister>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageRegisterToJson(this);
  }
}

abstract class _LanguageRegister implements LanguageRegister {
  const factory _LanguageRegister(
          {@JsonKey(name: 'title') String? title,
          @JsonKey(name: 'footnote_button') String? footnoteButton}) =
      _$_LanguageRegister;

  factory _LanguageRegister.fromJson(Map<String, dynamic> json) =
      _$_LanguageRegister.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'footnote_button')
  String? get footnoteButton => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageRegisterCopyWith<_LanguageRegister> get copyWith =>
      throw _privateConstructorUsedError;
}
