// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_payments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguagePayments _$_$_LanguagePaymentsFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguagePayments', json, () {
    final val = _$_LanguagePayments(
      title: $checkedConvert(json, 'title', (v) => v as String?),
      noTransactions:
          $checkedConvert(json, 'no_transactions', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'noTransactions': 'no_transactions'});
}

Map<String, dynamic> _$_$_LanguagePaymentsToJson(
        _$_LanguagePayments instance) =>
    <String, dynamic>{
      'title': instance.title,
      'no_transactions': instance.noTransactions,
    };
