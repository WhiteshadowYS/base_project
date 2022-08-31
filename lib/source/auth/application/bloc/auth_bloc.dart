import 'package:base_project/source/auth/application/use_cases/sign_in_use_case.dart';
import 'package:base_project/source/auth/application/use_cases/sign_out_use_case.dart';
import 'package:base_project/source/auth/application/use_cases/sign_up_use_case.dart';
import 'package:base_project/source/auth/domain/repositories/auth_repository.dart';
import 'package:base_project/utils/base_elements/base_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_services.dart';
part 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  final AuthServices _services;

  @factoryMethod
  AuthBloc.getItFactory(this._services) : super(AuthState.initial(), _services);
}
