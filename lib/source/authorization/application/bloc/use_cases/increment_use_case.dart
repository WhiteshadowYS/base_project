import 'package:base_project/utils/data_print.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';

abstract class IncrementUseCase extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  @override
  Future<void> execute(AuthorizationBloc bloc, dynamic emit) async {
    dataPrint('IncrementUseCase: Start', this);

    emit(bloc.state.copyWith(
      counter: (bloc.state.counter ?? 0) + 1,
    ));
  }
}
