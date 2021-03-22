part of 'app_bloc.dart';

enum BottomBarState { Default, Closed }
enum AppBarState { Default, Closed }

@freezed
abstract class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.initialized({
    Locale? locale,
    @Default(BottomBarState.Closed) BottomBarState bottomBarState,
    @Default(AppBarState.Closed) AppBarState appBarState,
  }) = _Initialized;
}
