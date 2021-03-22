part of 'home_page_bloc.dart';

@freezed
abstract class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.started() = _Started;
}
