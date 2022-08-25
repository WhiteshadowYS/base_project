import 'package:base_project/common/network/error/api_error.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/utils/base_elements/base_response.dart';
import 'package:base_project/utils/printers.dart';

abstract class IncrementUseCase extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  @override
  void execute(bloc, emit, covariant AuthorizationBlocServices services) async {
    blocPrint('IncrementUseCase: Start', this);

    final BaseResponse response = BaseResponse<String>(
      response: 'Hello',
      error: ApiError.createApiError(code: 404, data: ''),
    );

    if (!response.isSuccess) {
      super.onError(response.error!);
    }

    emit(
      bloc.state.copyWith(
        counter: (bloc.state.counter ?? 0) + 1,
      ),
    );

    super.execute(bloc, emit, services);
  }
}
