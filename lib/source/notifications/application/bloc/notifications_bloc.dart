import 'package:base_project/config/config.dart';
import 'package:base_project/source/notifications/application/use_cases/handle_notification_use_case.dart';
import 'package:base_project/utils/base_elements/base_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_bloc_services.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

@singleton
class NotificationsBloc extends BaseBloc<NotificationsEvent, NotificationsState> {
  final NotificationsBlocServices _services;

  static NotificationsBloc get instance => getIt<NotificationsBloc>();

  @factoryMethod
  NotificationsBloc.getItFactory(this._services) : super(NotificationsState.initial, _services);
}
