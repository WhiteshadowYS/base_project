import 'package:base_project/utils/data_print.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/config/application/bloc/app_bloc.dart';

abstract class InitAppUseCase2 extends BaseEvent<AppState, AppBloc> {
  @override
  Stream<AppState> execute(AppBloc bloc) async* {
    dataPrint('InitAppStart2', this);
  }
}
