import 'package:base_project/application/use_cases/init_app_use_case.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/utils/base_elements/base_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_services.dart';
part 'app_state.dart';

@singleton
class AppBloc extends BaseBloc<AppEvent, AppState> {
  final AppBlocServices _services;

  static AppBloc get instance => getIt<AppBloc>();

  @factoryMethod
  AppBloc.getItFactory(this._services) : super(AppState.initial, _services);
}
