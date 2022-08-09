part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signin() = _Signin;
  const factory AuthEvent.signout() = _SignOut;
}
