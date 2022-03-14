part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const NotificationsState._();

  const factory NotificationsState() = _NotificationsState;

  static NotificationsState get initial {
    return NotificationsState();
  }
}
