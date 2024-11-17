import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:freezed_practise/config/color/colors.dart';
import 'package:freezed_practise/main.dart';
import 'package:freezed_practise/bloc/login_bloc/login_bloc.dart';
import 'package:freezed_practise/services/popscope/pop_scope_widget.dart';
import 'package:freezed_practise/views/login/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc _loginBloc;
  final _formKey = GlobalKey<FormState>();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc(loginRepository: getIt());
  }

  @override
  Widget build(BuildContext context) {
    print('Main Login Screen Build');
    return PopScopeWidget(
      child: Scaffold(
        body: BlocProvider(
          create: (_) => _loginBloc,
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      MaterialCommunityIcons.movie_roll,
                      size: 120,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Popcornflix',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  EmailInputWidget(focusNode: emailFocusNode),
                  const SizedBox(
                    height: 13,
                  ),
                  PasswordInputWidget(
                    focusNode: passwordFocusNode,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  LoginButton(formKey: _formKey)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
