import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_language.freezed.dart';
part 'global_language.g.dart';

@freezed
class GlobalLanguage with _$GlobalLanguage {
  @JsonSerializable()
  const factory GlobalLanguage({
    @required String? noNameText,
    @required String? buyButtonText,
    @required String? buttonOkText,
    @required String? buttonErrorText,
    @required String? errorTitle,
    @required String? descriptionTitle,
    @required String? languageTitle,
    @required String? cityTitle,
    @required String? currecyTitle,
    @required String? currencyValue,
    @required String? weightTitle,
    @required String? weightValue,
  }) = _GlobalLanguage;

  factory GlobalLanguage.fromJson(Map<String, dynamic> json) => _$GlobalLanguageFromJson(json);
}
