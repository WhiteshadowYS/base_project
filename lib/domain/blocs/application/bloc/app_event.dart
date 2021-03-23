part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.initialize() = _Initialize;
  const factory AppEvent.changeLocale(Locale locale) = _ChangeLocale;
  const factory AppEvent.changeAppBarState(AppBarState state) = _ChangeAppBarState;
  const factory AppEvent.changeBottomBarState(BottomBarState state) = _ChangeBottomBarState;
}
