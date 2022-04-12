part of 'app_bloc.dart';

@freezed
class AppEvent extends BaseEvent<AppState, AppBloc> with _$AppEvent {
  AppEvent._();

  @With<InitAppUseCase>()
  factory AppEvent.initApp() = _InitAppUseCase;
}
