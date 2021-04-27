// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'language_footnote_buttons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageFootnoteButtons _$LanguageFootnoteButtonsFromJson(
    Map<String, dynamic> json) {
  return _LanguageFootnoteButtons.fromJson(json);
}

/// @nodoc
class _$LanguageFootnoteButtonsTearOff {
  const _$LanguageFootnoteButtonsTearOff();

  _LanguageFootnoteButtons call(
      {@JsonKey(name: 'terms') String? terms,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'remind_me') String? remindMe}) {
    return _LanguageFootnoteButtons(
      terms: terms,
      login: login,
      remindMe: remindMe,
    );
  }

  LanguageFootnoteButtons fromJson(Map<String, Object> json) {
    return LanguageFootnoteButtons.fromJson(json);
  }
}

/// @nodoc
const $LanguageFootnoteButtons = _$LanguageFootnoteButtonsTearOff();

/// @nodoc
mixin _$LanguageFootnoteButtons {
  @JsonKey(name: 'terms')
  String? get terms => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String? get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'remind_me')
  String? get remindMe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageFootnoteButtonsCopyWith<LanguageFootnoteButtons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageFootnoteButtonsCopyWith<$Res> {
  factory $LanguageFootnoteButtonsCopyWith(LanguageFootnoteButtons value,
          $Res Function(LanguageFootnoteButtons) then) =
      _$LanguageFootnoteButtonsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'terms') String? terms,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'remind_me') String? remindMe});
}

/// @nodoc
class _$LanguageFootnoteButtonsCopyWithImpl<$Res>
    implements $LanguageFootnoteButtonsCopyWith<$Res> {
  _$LanguageFootnoteButtonsCopyWithImpl(this._value, this._then);

  final LanguageFootnoteButtons _value;
  // ignore: unused_field
  final $Res Function(LanguageFootnoteButtons) _then;

  @override
  $Res call({
    Object? terms = freezed,
    Object? login = freezed,
    Object? remindMe = freezed,
  }) {
    return _then(_value.copyWith(
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      remindMe: remindMe == freezed
          ? _value.remindMe
          : remindMe // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LanguageFootnoteButtonsCopyWith<$Res>
    implements $LanguageFootnoteButtonsCopyWith<$Res> {
  factory _$LanguageFootnoteButtonsCopyWith(_LanguageFootnoteButtons value,
          $Res Function(_LanguageFootnoteButtons) then) =
      __$LanguageFootnoteButtonsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'terms') String? terms,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'remind_me') String? remindMe});
}

/// @nodoc
class __$LanguageFootnoteButtonsCopyWithImpl<$Res>
    extends _$LanguageFootnoteButtonsCopyWithImpl<$Res>
    implements _$LanguageFootnoteButtonsCopyWith<$Res> {
  __$LanguageFootnoteButtonsCopyWithImpl(_LanguageFootnoteButtons _value,
      $Res Function(_LanguageFootnoteButtons) _then)
      : super(_value, (v) => _then(v as _LanguageFootnoteButtons));

  @override
  _LanguageFootnoteButtons get _value =>
      super._value as _LanguageFootnoteButtons;

  @override
  $Res call({
    Object? terms = freezed,
    Object? login = freezed,
    Object? remindMe = freezed,
  }) {
    return _then(_LanguageFootnoteButtons(
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      remindMe: remindMe == freezed
          ? _value.remindMe
          : remindMe // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_LanguageFootnoteButtons implements _LanguageFootnoteButtons {
  const _$_LanguageFootnoteButtons(
      {@JsonKey(name: 'terms') this.terms,
      @JsonKey(name: 'login') this.login,
      @JsonKey(name: 'remind_me') this.remindMe});

  factory _$_LanguageFootnoteButtons.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageFootnoteButtonsFromJson(json);

  @override
  @JsonKey(name: 'terms')
  final String? terms;
  @override
  @JsonKey(name: 'login')
  final String? login;
  @override
  @JsonKey(name: 'remind_me')
  final String? remindMe;

  @override
  String toString() {
    return 'LanguageFootnoteButtons(terms: $terms, login: $login, remindMe: $remindMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageFootnoteButtons &&
            (identical(other.terms, terms) ||
                const DeepCollectionEquality().equals(other.terms, terms)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.remindMe, remindMe) ||
                const DeepCollectionEquality()
                    .equals(other.remindMe, remindMe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(terms) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(remindMe);

  @JsonKey(ignore: true)
  @override
  _$LanguageFootnoteButtonsCopyWith<_LanguageFootnoteButtons> get copyWith =>
      __$LanguageFootnoteButtonsCopyWithImpl<_LanguageFootnoteButtons>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageFootnoteButtonsToJson(this);
  }
}

abstract class _LanguageFootnoteButtons implements LanguageFootnoteButtons {
  const factory _LanguageFootnoteButtons(
          {@JsonKey(name: 'terms') String? terms,
          @JsonKey(name: 'login') String? login,
          @JsonKey(name: 'remind_me') String? remindMe}) =
      _$_LanguageFootnoteButtons;

  factory _LanguageFootnoteButtons.fromJson(Map<String, dynamic> json) =
      _$_LanguageFootnoteButtons.fromJson;

  @override
  @JsonKey(name: 'terms')
  String? get terms => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'login')
  String? get login => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'remind_me')
  String? get remindMe => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageFootnoteButtonsCopyWith<_LanguageFootnoteButtons> get copyWith =>
      throw _privateConstructorUsedError;
}
