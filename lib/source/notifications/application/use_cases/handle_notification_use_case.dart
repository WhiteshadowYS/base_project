import 'package:base_project/source/notifications/application/bloc/notifications_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';

abstract class HandleNotificationUseCase extends BaseEvent<NotificationsState, NotificationsBloc> {
  @override
  void execute(bloc, emit, covariant NotificationsBlocServices services) async {
    super.execute(bloc, emit, services);
  }
}
