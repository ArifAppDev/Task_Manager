import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:task_manager/presentation/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:task_manager/presentation/widgets/custom_button/custom_button_onboarding.dart';
import 'package:task_manager/presentation/widgets/custom_password_textfrom_field/custom_password_textfield.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var currentPassword = TextEditingController();
    var newPassword = TextEditingController();
    var newConfirmPassword = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ================== custom app bar ==================
              SizedBox(height: 50),
              CustomAppBar(
                appbarName: 'Change Password',
                onTap: () {
                  Get.back();
                },
              ),

              //================ type password ===================
              SizedBox(height: 20),
              Text(
                StaticStrings.typepassword,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.bgblack,
                ),
              ),
              SizedBox(height: 6),

              CustomPasswordTextField(passwordcontroller: currentPassword),
              SizedBox(height: 22),
              //=============== new password ====================
              Text(
                StaticStrings.newpassword,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.bgblack,
                ),
              ),
              SizedBox(height: 6),

              CustomPasswordTextField(passwordcontroller: newPassword),
              SizedBox(height: 22),

              //===================== new confirm password ================
              Text(
                StaticStrings.newconfirmPassword,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.bgblack,
                ),
              ),
              SizedBox(height: 6),
              CustomPasswordTextField(passwordcontroller: newConfirmPassword),
              SizedBox(height: 22),
              //================== custom button ===================
              CustomButton(title: 'Update', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
