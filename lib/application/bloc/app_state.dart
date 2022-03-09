part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const AppState._();

  const factory AppState() = _AppState;

  const factory AppState.initialized() = _InitializedAppState;

  static AppState get initial {
    return AppState();
  }
}
