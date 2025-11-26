import 'package:flutter/material.dart';
import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:task_manager/presentation/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:task_manager/presentation/widgets/profile_custom_button/profile_custom_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ///////====================== custom app bar ==========================
            SizedBox(height: 50),
            CustomAppBar(appbarName: 'Account Setting', onTap: () {}),

            // ==================== change password button ==============================
            ProfileCustomButton(
              title: 'Change Password',
              icon: CustomIcons.changepassword,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
