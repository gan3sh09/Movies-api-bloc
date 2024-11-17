part of 'login_bloc.dart';

class LoginStates extends Equatable {
  final String email;
  final String password;
  final String message;
  final PostApiStatus postApiStatus;
  final bool isPasswordVisible;

  const LoginStates({
    this.email = '',
    this.password = '',
    this.message = '',
    this.postApiStatus = PostApiStatus.initial,
    this.isPasswordVisible = false,
  });

  LoginStates copyWith({
    String? email,
    String? password,
    String? message,
    PostApiStatus? postApiStatus,
    bool? obscureTextHandler,
    bool? isPasswordVisible,
  }) {
    return LoginStates(
      email: email ?? this.email,
      password: password ?? this.password,
      message: message ?? this.message,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        message,
        postApiStatus,
        isPasswordVisible,
      ];
}
