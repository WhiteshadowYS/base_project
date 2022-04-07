import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';

abstract class IncrementUseCase extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  @override
  void execute(bloc, emit, covariant AuthorizationBlocServices services) async {
    UIManager.logger.i('IncrementUseCase: Start', this);

    emit(bloc.state.copyWith(
      counter: (bloc.state.counter ?? 0) + 1,
    ));

    super.execute(bloc, emit, services);
  }
}
