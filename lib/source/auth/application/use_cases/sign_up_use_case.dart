import 'package:base_project/source/auth/application/bloc/auth_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';

abstract class SignUpUseCase extends BaseEvent<AuthState, AuthBloc> {
  @override
  void execute(bloc, emit, covariant AuthServices services) async {
    // unawaited(UIManager.router.replace(BottomBarScreenRoute()));
    super.execute(bloc, emit, services);
  }
}
