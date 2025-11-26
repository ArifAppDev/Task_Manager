import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task_manager/presentation/screens/home/home_controller/home_controller.dart';
import 'package:task_manager/presentation/screens/home/inner_widget/home_card/home_card.dart';

import 'package:task_manager/presentation/screens/home/inner_widget/home_profile_section/home_profile_section.dart';
import 'package:task_manager/presentation/screens/task_details/task_details_screen.dart';
import 'package:task_manager/presentation/widgets/custom_nav_bar/custom_nav_bar.dart';

import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // This allows access to the controller state's and logic
    var homeController = Get.find<HomeController>();

    return Scaffold(
      bottomNavigationBar: CustomNavBar(selectedIndex: 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //======================== profile section =============================
          ProfileSection(),

          SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              StaticStrings.mytask,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.bgblack,
              ),
            ),
          ),

          //========== home card===============

          //================ list view builder =====================
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: homeController.taskDetails.length,
                itemBuilder: (context, index) {
                  //       //==========home card===============
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: HomeCard(
                      onTap: () {
                        Get.to(() => TaskDetailsScreen(index: index));
                      },
                      index: index,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
