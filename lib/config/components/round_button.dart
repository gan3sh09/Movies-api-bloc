import 'package:flutter/material.dart';
import 'package:freezed_practise/config/color/colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const RoundButton({required this.title, required this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
