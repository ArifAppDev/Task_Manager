import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';

import 'package:task_manager/presentation/widgets/custom_app_bar/custom_app_bar.dart';

import 'package:task_manager/presentation/widgets/profile_custom_button/profile_custom_button.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            // ================= custom App bar ======================
            Row(
              children: [
                Expanded(
                  child: CustomAppBar(
                    appbarName: 'My ProFile',
                    onTap: () {
                      Get.back();
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(9),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.softbrandColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 24,
                          spreadRadius: 0,
                          blurStyle: BlurStyle.outer,
                          offset: Offset(1, 1),

                          color: Colors.black12,
                        ),
                      ],
                    ),

                    child: Center(
                      child: Icon(Icons.edit, color: AppColors.primaryColor),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),

            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1683121366070-5ceb7e007a97?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8VXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&q=60&w=500",
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Center(
                child: Text(
                  "Mujahid",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
            ),

            //============================ profile name ====================
            ProfileCustomButton(
              title: 'Mojahid Islam',
              icon: CustomIcons.cardprofile,

              onTap: () {},
            ),
            SizedBox(height: 10),

            // =========================== profile email =====================
            ProfileCustomButton(
              title: 'Samaltman@gmail.com',
              icon: CustomIcons.email,

              onTap: () {},
            ),
            SizedBox(height: 10),

            //=============================== profile location ====================
            ProfileCustomButton(
              title: '1234 Elm Street, Springfield, IL',
              icon: CustomIcons.location,
              onTap: () {},
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
