import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_practise/bloc/login_bloc/login_bloc.dart';
import 'package:freezed_practise/config/color/colors.dart';

class PasswordInputWidget extends StatefulWidget {
  final FocusNode focusNode;
  const PasswordInputWidget({super.key, required this.focusNode});

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  @override
  Widget build(BuildContext context) {
    print('Password Build');
    return BlocBuilder<LoginBloc, LoginStates>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isPasswordVisible != current.isPasswordVisible,
      builder: (context, state) {
        return Theme(
          data: Theme.of(context).copyWith(
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: AppColors.primaryColor,
              selectionColor: AppColors.primaryColor.withOpacity(0.5),
              selectionHandleColor: AppColors.primaryColor,
            ),
          ),
          child: TextFormField(
            cursorColor: AppColors.primaryColor,
            obscureText: !state.isPasswordVisible,
            keyboardType: TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            focusNode: widget.focusNode,
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: AppColors.whiteColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: AppColors.whiteColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  width: 2,
                  color: AppColors.whiteColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColors.whiteColor,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: AppColors.whiteColor,
                  width: 1,
                ),
              ),
              fillColor: AppColors.solidBlack,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 13,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  state.isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: AppColors.whiteColor,
                ),
                onPressed: () {
                  print("Toggle Password Visibility Tapped");
                  context.read<LoginBloc>().add(TogglePasswordVisibility());
                },
              ),
            ),
            onChanged: (value) {
              context.read<LoginBloc>().add(PasswordChanged(password: value));
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Please enter password greater than 6 character';
              }
              return null;
            },
            onFieldSubmitted: (value) {},
          ),
        );
      },
    );
  }
}
