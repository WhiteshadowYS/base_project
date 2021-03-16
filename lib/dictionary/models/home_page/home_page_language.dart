import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_language.g.dart';
part 'home_page_language.freezed.dart';

@freezed
class HomePageLanguage with _$HomePageLanguage {
  @JsonSerializable()
  const factory HomePageLanguage({
    @required String? title,
    @required String? createdOrdersTitle,
    @required String? activeOrdersTitle,
    @required String? closedOrdersTitle,
    @required String? closeOrder,
    @required String? startOrder,
    @required String? startText,
    @required String? endText,
  }) = _HomePageLanguage;

  factory HomePageLanguage.fromJson(Map<String, dynamic> json) => _$HomePageLanguageFromJson(json);
}
