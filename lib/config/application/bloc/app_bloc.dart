import 'package:base_project/utils/data_print.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/config/application/bloc/use_cases/init_app_use_case.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial) {
    on<AppEvent>((event, emit) => event.execute(this, emit));
  }

  @override
  void onTransition(Transition<AppEvent, AppState> transition) {
    super.onTransition(transition);
    dataPrint('transition: $transition');
  }
}
