import 'package:base_project/utils/data_print.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';

abstract class IncrementUseCase extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  @override
  Stream<AuthorizationState> execute(AuthorizationBloc bloc) async* {
    dataPrint('IncrementEvent: Start', this);

    yield bloc.state.copyWith(
      counter: (bloc.state.counter ?? 0) + 1,
    );
  }
}
