import 'package:flutter/material.dart';

import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:task_manager/core/custom_assets/custom_images/custom_images.dart';

import 'package:task_manager/presentation/widgets/profile_custom_button/profile_custom_button.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Stack(
              children: [
                Positioned(
                  top: 0,

                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    CustomImages.profilebackround,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  top: 140,
                  width: MediaQuery.of(context).size.width / 1.0,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1474575695008-52c137c36eef?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                // ==================== custom profile button =================
                SizedBox(height: 8),

                // =========== my Profile ================
                ProfileCustomButton(
                  title: 'My ProFile',
                  icon: CustomIcons.profile,
                  arrowicon: Icons.arrow_forward_ios,
                ),
                SizedBox(height: 8),
                //============= Account settings ==============
                ProfileCustomButton(
                  title: 'Account Setting',
                  icon: CustomIcons.settings,
                  arrowicon: Icons.arrow_forward_ios,
                ),

                Padding(
                  padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                  child: Text(
                    StaticStrings.more,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.bgblack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                // ============ Terams & condition ===========
                ProfileCustomButton(
                  title: 'Terms & Condition',
                  icon: CustomIcons.terms,
                  arrowicon: Icons.arrow_forward_ios,
                ),
                SizedBox(height: 8),
                // ========== privacy policy =====================
                ProfileCustomButton(
                  title: 'Privacy policy',
                  icon: CustomIcons.privacy,
                  arrowicon: Icons.arrow_forward_ios,
                ),
                SizedBox(height: 8),

                // =========== help & support ============
                ProfileCustomButton(
                  title: 'Help/Support',
                  icon: CustomIcons.helpsupport,
                  arrowicon: Icons.arrow_forward_ios,
                ),
                SizedBox(height: 8),

                //============== log out ================
                ProfileCustomButton(
                  title: 'Log Out',
                  icon: CustomIcons.logout,
                  arrowicon: Icons.arrow_forward_ios,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
