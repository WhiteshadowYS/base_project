import 'package:base_project/config/app_router.dart';
import 'package:base_project/utils/data_print.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/config/application/bloc/app_bloc.dart';

abstract class InitAppUseCase extends BaseEvent<AppState, AppBloc> {
  @override
  Stream<AppState> execute(AppBloc bloc) async* {
    dataPrint('InitAppStart', this);
    await Future.delayed(AppData.durations.milliseconds500);
    await router.replace(LoginScreenRoute());
  }
}
