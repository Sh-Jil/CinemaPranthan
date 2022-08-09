// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/auth/authrepo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authrepo;
  AuthBloc(this.authrepo) : super(const AuthState.unauthenticated()) {
    on<_Signin>((event, emit) async {
      try {
        await authrepo.signInWithGoogle();
        emit(const AuthState.authenticated());
      } catch (e) {
        emit(const AuthState.unauthenticated());
      }
    });
    on<_SignOut>((event, emit) async {
      try {
        await authrepo.signOut();
        emit(const AuthState.unauthenticated());
      } catch (e) {
        emit(const AuthState.authenticated());
      }
    });
  }
}
