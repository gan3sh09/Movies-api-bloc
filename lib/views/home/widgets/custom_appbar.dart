import 'package:flutter/material.dart';
import 'package:freezed_practise/config/color/colors.dart';
import 'package:freezed_practise/services/logout/logout.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.solidBlack,
      automaticallyImplyLeading: false,
      title: const Text('Movies'),
      actions: [
        IconButton(
          onPressed: () {
            Logout(context).execute();
          },
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
