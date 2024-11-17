import 'package:flutter/material.dart';
import 'package:freezed_practise/config/color/colors.dart';
import 'package:freezed_practise/config/components/loading_widget.dart';
import 'package:freezed_practise/config/routes/routes_name.dart';
import 'package:freezed_practise/services/storage/local_storage.dart';

class Logout {
  final BuildContext context;

  Logout(this.context);

  Future<void> execute() async {
    bool? shouldLogout = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const LogoutDialog(),
    );

    if (shouldLogout == true && context.mounted) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Dialog(
          backgroundColor: Colors.transparent,
          child: Center(
            child: LoadingWidget(
              size: 60,
              colors: [
                AppColors.primaryColor,
                AppColors.whiteColor,
                AppColors.primaryColor
              ],
            ),
          ),
        ),
      );

      await Future.delayed(const Duration(seconds: 2));

      LocalStorage localStorage = LocalStorage();
      await localStorage.clearValue('token');
      await localStorage.clearValue('isLogin');

      if (context.mounted) {
        Navigator.pop(context);
        Navigator.pushNamed(context, RoutesName.loginScreen);
      }
    }
  }
}

class LogoutDialog extends StatefulWidget {
  const LogoutDialog({super.key});

  @override
  State<LogoutDialog> createState() => _LogoutDialogState();
}

class _LogoutDialogState extends State<LogoutDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    // Fade-in animation
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    // Scale-up animation
    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );

    // Trigger animations when the widget is built
    _animationController.forward();
  }

  void _closeDialog(bool result) async {
    // Reverse animation before closing the dialog
    await _animationController.reverse();
    if (mounted) {
      Navigator.pop(context, result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => _closeDialog(false),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            TextButton(
              onPressed: () => _closeDialog(true),
              child: const Text(
                'Yes',
                style: TextStyle(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
