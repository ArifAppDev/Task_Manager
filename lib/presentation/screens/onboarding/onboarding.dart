import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_manager/core/general_controller/general_controller.dart';
import 'package:task_manager/core/routes/app_routes.dart';

import 'package:task_manager/presentation/widgets/custom_button_onboarding.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ========dependency Injection========
    final GeneralController generalController = Get.find<GeneralController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.loginscreen);
                    },
                    child: Text(
                      StaticStrings.skip,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              Expanded(
                child: PageView.builder(
                  controller: generalController.pageController,
                  itemCount: generalController.onboardingItem.length,
                  onPageChanged: generalController.onpageChanged,

                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 30),
                        Image.asset(
                          generalController.onboardingItem[index]['img']!,
                          height: 280,
                          width: 280,
                        ),

                        SizedBox(height: 42),

                        Text(
                          generalController.onboardingItem[index]['title']!,
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          textAlign: TextAlign.center,
                          generalController
                              .onboardingItem[index]['description']!,
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.secondaryText,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // smooth page indicator
              Obx(
                () => SmoothPageIndicator(
                  controller:
                      generalController.pageController, // PageController
                  count: generalController.onboardingItem.length,

                  effect: ExpandingDotsEffect(
                    dotHeight: 10,
                    activeDotColor: AppColors.primaryColor,
                    dotColor: AppColors.lightGrey,
                  ), // your preferred effect
                  onDotClicked: (index) {},
                ),
              ),

              SizedBox(height: 200),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Obx(
                  () => CustomButton(
                    title: generalController.pageIndex.value == 2
                        ? 'Continue'
                        : 'Next',
                    onTap: () {
                      if (generalController.pageController.page == 2) {
                        Get.toNamed(AppRoutes.loginscreen);
                      } else {
                        generalController.pageController.nextPage(
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                ),
              ),

              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
