import 'dart:async';

import 'package:base_project_template/common/connection/i_connection_checker.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  IConnectionChecker connectionChecker;

  UserBloc(this.connectionChecker) : super(_Initial());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {}
}
