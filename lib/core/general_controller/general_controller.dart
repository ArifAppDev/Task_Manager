import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/core/custom_assets/custom_images/custom_images.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class GeneralController extends GetxController {
  // check box bool
  RxBool isCheck = false.obs;
  // password visibility bool
  RxBool isSecure = true.obs;

  RxInt currentIndex = 0.obs;
  RxInt pageIndex = 0.obs;

  void onpageChanged(int index) {
    pageIndex.value = index;
  }

  void updateIndex(int index) {
    currentIndex.value = index;
  }

  final PageController pageController = PageController();

  RxList<Map<String, String>> onboardingItem = [
    {
      'img': CustomImages.onboarding1,
      'title': StaticStrings.manageEverything,
      'description': StaticStrings.createCatagorize,
    },

    {
      'img': CustomImages.onboarding2,
      'title': StaticStrings.focusonwhatsMatter,
      'description': StaticStrings.setpriorities,
    },

    {
      'img': CustomImages.onboarding3,
      'title': StaticStrings.visulizeProgress,
      'description': StaticStrings.monitorCompleted,
    },
  ].obs;
}
