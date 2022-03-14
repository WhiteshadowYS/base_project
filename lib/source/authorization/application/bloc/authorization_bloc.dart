import 'package:base_project/config/config.dart';
import 'package:base_project/source/authorization/application/use_cases/increment_use_case.dart';
import 'package:base_project/source/authorization/application/use_cases/sign_in_use_case.dart';
import 'package:base_project/source/authorization/application/use_cases/sign_out_use_case.dart';
import 'package:base_project/source/authorization/application/use_cases/sign_up_use_case.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:base_project/utils/base_elements/base_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authorization_bloc.freezed.dart';
part 'authorization_bloc_services.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

@singleton
class AuthorizationBloc extends BaseBloc<AuthorizationEvent, AuthorizationState> {
  final AuthorizationBlocServices _services;

  static AuthorizationBloc get instance => getIt<AuthorizationBloc>();

  @factoryMethod
  AuthorizationBloc.getItFactory(this._services) : super(AuthorizationState.initial, _services);
}
