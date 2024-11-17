import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_practise/config/color/colors.dart';
import 'package:freezed_practise/utils/validations.dart';
import 'package:freezed_practise/bloc/login_bloc/login_bloc.dart';

class EmailInputWidget extends StatelessWidget {
  final FocusNode focusNode;
  const EmailInputWidget({required this.focusNode, super.key});

  @override
  Widget build(BuildContext context) {
    print('Email Build');
    return BlocBuilder<LoginBloc, LoginStates>(
      buildWhen: (previous, current) => previous.email != current.email,
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
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            focusNode: focusNode,
            decoration: InputDecoration(
              hintText: 'Email',
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
            ),
            onChanged: (value) {
              context.read<LoginBloc>().add(EmailChanged(email: value));
            },
            validator: (value) {
              if (!Validations.emailValidation(value!)) {
                return 'Please enter valid email';
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
