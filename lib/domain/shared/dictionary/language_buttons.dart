import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_buttons.freezed.dart';
part 'language_buttons.g.dart';

@freezed
class LanguageButtons with _$LanguageButtons {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageButtons({
    @JsonKey(name: 'find') String? find,
    @JsonKey(name: 'save') String? save,
    @JsonKey(name: 'edit') String? edit,
    @JsonKey(name: 'submit') String? submit,
    @JsonKey(name: 'help') String? help,
    @JsonKey(name: 'login') String? login,
    @JsonKey(name: 'cancel') String? cancel,
    @JsonKey(name: 'book_now') String? bookNow,
    @JsonKey(name: 'register') String? register,
    @JsonKey(name: 'finish') String? finish,
    @JsonKey(name: 'contact_us') String? contactUs,
    @JsonKey(name: 'accept_all') String? acceptAll,
    @JsonKey(name: 'confirm_booking') String? confirmBooking,
    @JsonKey(name: 'end_booking') String? endBooking,
    @JsonKey(name: 'find_freelancers') String? findFreelancers,
    @JsonKey(name: 'finish_session') String? finishSession,
    @JsonKey(name: 'terms_button') String? termsButton,
    @JsonKey(name: 'unmark_all') String? unmarkAll,
    @JsonKey(name: 'got_it') String? gotIt,
  }) = _LanguageButtons;

  factory LanguageButtons.fromJson(Map<String, dynamic> json) => _$LanguageButtonsFromJson(json);
}
