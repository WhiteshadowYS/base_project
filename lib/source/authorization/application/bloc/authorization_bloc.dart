import 'dart:async';

import 'package:base_project/source/authorization/application/bloc/events/sign_out_event.dart';
import 'package:base_project/source/authorization/application/bloc/events/sign_up_event.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/source/authorization/domain/services/sign_in_service.dart';
import 'package:base_project/source/authorization/domain/repositories/user_repository.dart';
import 'package:base_project/source/authorization/domain/repositories/users_repository.dart';
import 'package:base_project/source/authorization/application/bloc/events/sign_in_event.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';
part 'authorization_bloc.freezed.dart';

@singleton
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final UserRepository _userRepository;
  final UsersRepository _usersRepository;

  AuthorizationBloc(
    this._userRepository,
    this._usersRepository,
  ) : super(AuthorizationState(
          user: _userRepository,
          savedUsers: _usersRepository,
        ));

  @override
  Stream<AuthorizationState> mapEventToState(
    AuthorizationEvent event,
  ) async* {
    yield* event.action(this);
  }
}
