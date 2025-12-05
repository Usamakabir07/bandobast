part of 'auth_cubit.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoggedIn extends AuthState {
  final String phone;

  AuthLoggedIn({required this.phone});
}

class AuthLoggedOut extends AuthState {}
