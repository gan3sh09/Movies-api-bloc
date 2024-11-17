import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freezed_practise/config/routes/routes_name.dart';
import 'package:freezed_practise/services/session_manager/session_controller.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    SessionController().getUserFromPreference().then((value) {
      if (SessionController().isLogin ?? false) {
        Timer(
          const Duration(seconds: 3),
          () => Navigator.pushNamedAndRemoveUntil(
              context, RoutesName.homeScreen, (route) => false),
        );
      } else {
        Timer(
          const Duration(seconds: 3),
          () => Navigator.pushNamedAndRemoveUntil(
              context, RoutesName.loginScreen, (route) => false),
        );
      }
    }).onError((error, stackTrace) {
      Timer(
        const Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.loginScreen, (route) => false),
      );
    });
  }
}
