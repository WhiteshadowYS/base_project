import 'dart:async';

import 'package:base_project_template/common/device_info/i_device_info_loader.dart';
import 'package:base_project_template/common/dialog/i_dialog_presenter.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(_Initial());

  @override
  Stream<HomePageState> mapEventToState(
    HomePageEvent event,
  ) async* {}
}
