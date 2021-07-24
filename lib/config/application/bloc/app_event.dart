part of 'app_bloc.dart';

@freezed
class AppEvent extends BaseEvent<AppState, AppBloc> with _$AppEvent {
  @With(InitAppUseCase)
  const factory AppEvent.initApp() = _InitApp;
}
