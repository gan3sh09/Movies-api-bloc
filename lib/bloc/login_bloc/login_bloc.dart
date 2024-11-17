import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_practise/repository/auth/login_repository.dart';
import 'package:freezed_practise/services/session_manager/session_controller.dart';
import 'package:freezed_practise/utils/enum.dart';
part 'login_event.dart';
part 'login_states.dart';

class LoginBloc extends Bloc<LoginEvent, LoginStates> {
  LoginRepository loginRepository;

  LoginBloc({required this.loginRepository}) : super(const LoginStates()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(_loginApi);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginStates> emit) {
    print(event.email);
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) {
    print(event.password);
    emit(state.copyWith(password: event.password));
  }

  void _loginApi(LoginApi event, Emitter<LoginStates> emit) async {
    // Map data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};

    Map data = {"email": state.email, "password": state.password};

    emit(state.copyWith(postApiStatus: PostApiStatus.loading));

    await loginRepository.loginApi(data).then((value) async {
      if (value.error.isNotEmpty) {
        emit(state.copyWith(
            message: 'Invalid Credentials',
            postApiStatus: PostApiStatus.error));
      } else {
        await SessionController().saveUserInPreference(value);
        await SessionController().getUserFromPreference();

        emit(state.copyWith(
            message: 'Login Successful', postApiStatus: PostApiStatus.success));
      }
    }).onError(
      (error, stackTrace) {
        emit(state.copyWith(
            message: error.toString(), postApiStatus: PostApiStatus.error));
      },
    );
  }

  void _onTogglePasswordVisibility(
      TogglePasswordVisibility event, Emitter<LoginStates> emit) {
    print("Current visibility: ${state.isPasswordVisible}");
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
    print("Updated visibility: ${!state.isPasswordVisible}");
  }
}
