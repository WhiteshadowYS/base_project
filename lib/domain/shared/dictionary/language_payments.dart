import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_payments.freezed.dart';
part 'language_payments.g.dart';

@freezed
class LanguagePayments with _$LanguagePayments {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguagePayments({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'no_transactions') String? noTransactions,
  }) = _LanguagePayments;

  factory LanguagePayments.fromJson(Map<String, dynamic> json) => _$LanguagePaymentsFromJson(json);
}
