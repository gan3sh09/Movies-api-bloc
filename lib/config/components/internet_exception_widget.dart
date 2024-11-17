import 'package:flutter/material.dart';
import 'package:freezed_practise/config/color/colors.dart';

class InternetExceptionWidget extends StatelessWidget {
  final void Function() onPressed;
  const InternetExceptionWidget({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
        ),
        const Icon(
          Icons.cloud_off,
          color: AppColors.redColor,
          size: 50,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          'We\'re unable to show results. \n Please check your internet connection.',
          style:
              Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.solidBlack,
            ),
            onPressed: onPressed,
            child:
                Text('Retry', style: Theme.of(context).textTheme.bodyMedium!),
          ),
        ),
      ],
    );
  }
}
