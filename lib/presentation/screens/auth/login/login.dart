import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:task_manager/core/routes/app_routes.dart';
import 'package:task_manager/core/utils/colors/app_colors.dart';
import 'package:task_manager/core/utils/static_string/static_strings.dart';
import 'package:task_manager/presentation/widgets/custom_button.dart';
import 'package:task_manager/presentation/widgets/custom_divider.dart';
import 'package:task_manager/presentation/widgets/custom_textfrom_field.dart';
import 'package:task_manager/presentation/widgets/custom_textfrom_field_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appbackround,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  StaticStrings.welcomeBack,
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                  StaticStrings.stayprodectivecontrol,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 22),

                Text(
                  StaticStrings.emailaddress,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 6),

                // custom Text from field
                CustomTextfromField(hinttext: 'michelle.rivera@example.com'),
                SizedBox(height: 22),

                // custom text from fiels password
                CustomTextfromFieldPassword(),

                SizedBox(height: 15),

                Row(
                  children: [
                    SvgPicture.asset(
                      CustomIcons.checkbox,
                      colorFilter: const ColorFilter.mode(
                        AppColors.checkBoxIconColor,
                        BlendMode.srcIn,
                      ),
                    ),

                    SizedBox(width: 10),

                    Text(
                      "Remember me",
                      style: TextStyle(
                        color: AppColors.colorsGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 33),

                //================ custom Divider===============
                CustomDivider(),
                SizedBox(height: 33),

                Row(
                  children: [
                    Text(
                      StaticStrings.donthaveanyAccount,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.colorsGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.signupscreen);
                      },
                      child: Text(
                        StaticStrings.signUp,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                //==================custom Button==================
                CustomButton(title: StaticStrings.login, onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
