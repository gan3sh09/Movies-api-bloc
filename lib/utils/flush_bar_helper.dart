import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:freezed_practise/config/color/colors.dart';

class FlushBarHelper {
  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(15),
        message: message,
        duration: const Duration(seconds: 5),
        borderRadius: BorderRadius.circular(6),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: AppColors.primaryColor,
        reverseAnimationCurve: Curves.easeInOut,
        title: 'System Message',
        positionOffset: 20,
        icon: const Icon(Icons.error),
      )..show(context),
    );
  }

  static void flushBarSuccessMessage(String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(15),
        message: message,
        duration: const Duration(seconds: 5),
        borderRadius: BorderRadius.circular(6),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: AppColors.successColor,
        reverseAnimationCurve: Curves.easeInOut,
        title: 'System Message',
        positionOffset: 20,
        icon: const Icon(Icons.join_right_sharp),
      )..show(context),
    );
  }
}
