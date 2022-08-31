part of 'auth_bloc.dart';

@freezed
class AuthEvent extends BaseEvent<AuthState, AuthBloc> with _$AuthEvent {
  AuthEvent._();

  @With<SignInUseCase>()
  factory AuthEvent.signIn() = _SignInEvent;

  @With<SignUpUseCase>()
  factory AuthEvent.signUp() = _SignUpEvent;

  @With<SignOutUseCase>()
  factory AuthEvent.signOut() = _SignOutEvent;
}
