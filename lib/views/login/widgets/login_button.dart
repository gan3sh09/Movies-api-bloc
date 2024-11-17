import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_practise/config/color/colors.dart';
import 'package:freezed_practise/config/components/loading_widget.dart';
import 'package:freezed_practise/config/routes/routes_name.dart';
import 'package:freezed_practise/utils/enum.dart';
import 'package:freezed_practise/utils/flush_bar_helper.dart';
import 'package:freezed_practise/bloc/login_bloc/login_bloc.dart';

class LoginButton extends StatelessWidget {
  final dynamic formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginStates>(
      listenWhen: (previous, current) =>
          current.postApiStatus != previous.postApiStatus,
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.error) {
          FlushBarHelper.flushBarErrorMessage(
              state.message.toString(), context);
        }

        if (state.postApiStatus == PostApiStatus.success) {
          Navigator.pushNamed(context, RoutesName.homeScreen);
          /* FlushBarHelper.flushBarSuccessMessage(
              state.message.toString(), context); */
        }
      },
      child: BlocBuilder<LoginBloc, LoginStates>(
        buildWhen: (previous, current) =>
            current.postApiStatus != previous.postApiStatus,
        builder: (context, state) {
          return SizedBox(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  )),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.read<LoginBloc>().add(LoginApi());
                }
              },
              child: state.postApiStatus == PostApiStatus.loading
                  ? const LoadingWidget(
                      size: 30,
                      colors: [AppColors.whiteColor],
                    )
                  : const Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
