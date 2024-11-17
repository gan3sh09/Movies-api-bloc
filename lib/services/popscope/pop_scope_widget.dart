// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:io';

import 'package:freezed_practise/config/color/colors.dart';

class PopScopeWidget extends StatelessWidget {
  final Widget child;

  const PopScopeWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
              context: context,
              builder: (context) => const ExitDialog(),
            ) ??
            false;
      },
      child: child,
    );
  }
}

class ExitDialog extends StatefulWidget {
  const ExitDialog({super.key});

  @override
  State<ExitDialog> createState() => _ExitDialogState();
}

class _ExitDialogState extends State<ExitDialog>
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
          title: const Text('Exit App'),
          content: const Text('Do you really want to exit the app?'),
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
              onPressed: () async {
                await _animationController.reverse();
                exit(0);
              },
              child: const Text(
                'Exit',
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
