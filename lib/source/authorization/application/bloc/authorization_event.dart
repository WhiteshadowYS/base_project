part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent extends BaseEvent<AuthorizationState, AuthorizationBloc> with _$AuthorizationEvent {
  @With(SignInUseCase)
  const factory AuthorizationEvent.signIn(SignInContract contract) = _SignInEvent;

  @With(SignUpUseCase)
  const factory AuthorizationEvent.signUp(SignUpContract contract) = _SignUpEvent;

  @With(SignOutUseCase)
  const factory AuthorizationEvent.signOut(SignOutContract contract) = _SignOutEvent;

  @With(IncrementUseCase)
  const factory AuthorizationEvent.increment() = _IncrementEvent;
}
