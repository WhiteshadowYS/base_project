import 'dart:async';

import 'package:base_project/src/authorization/application/bloc/events/login_event.dart';
import 'package:base_project/src/authorization/application/bloc/events/logout_event.dart';
import 'package:base_project/src/authorization/application/bloc/events/register_event.dart';
import 'package:base_project/src/authorization/domain/authorization_service.dart';
import 'package:base_project/src/authorization/domain/entities/user.dart';
import 'package:base_project/src/authorization/domain/models/login_data.dart';
import 'package:base_project/src/authorization/domain/models/registration_data.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';
part 'authorization_bloc.freezed.dart';

@singleton
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final AuthService authService;

  AuthorizationBloc(
    this.authService,
  ) : super(AuthorizationState(user: User(name: '', email: '')));

  @override
  Stream<AuthorizationState> mapEventToState(
    AuthorizationEvent event,
  ) async* {
    yield* event.action(this);
  }
}
