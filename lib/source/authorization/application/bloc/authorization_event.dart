part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent extends BaseEvent<AuthorizationState, AuthorizationBloc> with _$AuthorizationEvent {
  AuthorizationEvent._();

  @With<SignInUseCase>()
  factory AuthorizationEvent.signIn(SignInContract contract) = _SignInEvent;

  @With<SignUpUseCase>()
  factory AuthorizationEvent.signUp(SignUpContract contract) = _SignUpEvent;

  @With<SignOutUseCase>()
  factory AuthorizationEvent.signOut(SignOutContract contract) = _SignOutEvent;

  @With<IncrementUseCase>()
  factory AuthorizationEvent.increment() = _IncrementEvent;
}
