part of 'app_bloc.dart';

@freezed
class AppEvent extends BaseEvent<AppState, AppBloc> with _$AppEvent {
  @With(InitAppEvent)
  const factory AppEvent.initApp() = _InitApp;
}
