part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent extends BaseEvent<AuthorizationState, AuthorizationBloc> with _$AuthorizationEvent {
  @With(SignInEvent)
  const factory AuthorizationEvent.signIn(SignInContract contract) = _SignInEvent;

  @With(SignUpEvent)
  const factory AuthorizationEvent.signUp(SignUpContract contract) = _SignUpEvent;

  @With(SignOutEvent)
  const factory AuthorizationEvent.signOut(SignOutContract contract) = _SignOutEvent;
}
