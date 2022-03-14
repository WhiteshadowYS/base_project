part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent extends BaseEvent<NotificationsState, NotificationsBloc> with _$NotificationsEvent {
  NotificationsEvent._();

  @With<HandleNotificationUseCase>()
  factory NotificationsEvent.handleNotification() = _HandleNotification;
}
