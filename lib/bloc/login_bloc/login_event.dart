part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class EmailChanged extends LoginEvent {
  final String email;
  const EmailChanged({required this.email});

  @override
  List<Object> get props => [email];
}

class EmailUnfocused extends LoginEvent {}

class PasswordChanged extends LoginEvent {
  final String password;
  const PasswordChanged({required this.password});

  @override
  List<Object> get props => [password];
}

class PasswordUnfocused extends LoginEvent {}

class LoginApi extends LoginEvent {}

class TogglePasswordVisibility extends LoginEvent {}
