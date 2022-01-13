import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/source/authorization/application/bloc/use_cases/sign_in_use_case.dart';
import 'package:base_project/source/authorization/application/bloc/use_cases/sign_up_use_case.dart';
import 'package:base_project/source/authorization/application/bloc/use_cases/sign_out_use_case.dart';
import 'package:base_project/source/authorization/application/bloc/use_cases/increment_use_case.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';
part 'authorization_bloc.freezed.dart';

@singleton
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc() : super(AuthorizationState.initial) {
    on<AuthorizationEvent>((event, emit) => event.execute(this, emit));
  }
}
