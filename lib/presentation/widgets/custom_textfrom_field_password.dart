import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/instance_manager.dart';

import 'package:task_manager/core/utils/colors/app_colors.dart';
import 'package:task_manager/presentation/screens/auth/login/controller/password_visibility_controller.dart';

class CustomTextfromFieldPassword extends StatelessWidget {
  const CustomTextfromFieldPassword({super.key});

  @override
  Widget build(BuildContext context) {
    //========= dependency Injection==========
    final PasswordVisibilityController passwordController =
        Get.find<PasswordVisibilityController>();

    return Obx(
      () => TextFormField(
        obscureText: passwordController.isSecure.value,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.softbrandColor,
          hintText: "Enter you password",
          suffixIcon: IconButton(
            onPressed: () {
              passwordController.isSecure.value =
                  !passwordController.isSecure.value;
            },
            icon: Icon(
              passwordController.isSecure.value
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: AppColors.slate,
            ),
          ),

          // when the text field is not focushed
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),

            borderSide: BorderSide(color: AppColors.shadow, width: 3.0),
          ),

          // when the text field is focushed
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: AppColors.shadow, width: 3.0),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: AppColors.shadow, width: 3.0),
          ),
        ),
      ),
    );
  }
}
