import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';

import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:task_manager/presentation/screens/home/home_controller/home_controller.dart';

import 'package:task_manager/presentation/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class TaskDetailsScreen extends StatelessWidget {
  final int index;
  const TaskDetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var homeController = Get.find<HomeController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 40),
              //=========== custom app bar ===============
              CustomAppBar(
                appbarName: 'Add Task ',
                onTap: () {
                  Get.back();
                },
              ),

              SizedBox(height: 40),

              // task details card
              Container(
                padding: EdgeInsets.all(20),

                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.white,

                  boxShadow: [
                    BoxShadow(
                      blurRadius: 24,
                      spreadRadius: 0,
                      blurStyle: BlurStyle.outer,
                      color: Colors.black12,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(CustomIcons.tasktitle),
                        SizedBox(width: 8),
                        Text(StaticStrings.tasktitle),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 14,
                        top: 8,
                        left: 20,
                      ),
                      child: Text(homeController.taskDetails[index]["title"]),
                    ),

                    Divider(color: AppColors.primaryColor, thickness: 0.7),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset(CustomIcons.taskdescription),
                        SizedBox(width: 8),
                        Text(StaticStrings.taskDescription),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 14,
                        top: 10,
                        left: 20,
                      ),
                      child: Text(homeController.taskDetails[index]["des"]),
                    ),
                    Divider(color: AppColors.primaryColor, thickness: 0.7),
                    SizedBox(height: 14),

                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // homeController.removeTask(index);
                          },
                          child: Container(
                            width: 114,
                            height: 36,
                            decoration: BoxDecoration(
                              color: AppColors.redfifty,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: AppColors.redfifhundred,
                                width: 1,
                              ),
                            ),

                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  SvgPicture.asset(CustomIcons.delete),
                                  SizedBox(width: 8),
                                  Text(StaticStrings.edittask),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),

                        Container(
                          width: 114,
                          height: 36,
                          decoration: BoxDecoration(
                            color: AppColors.redfifty,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: AppColors.primaryColor,
                              width: 1,
                            ),
                          ),

                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(width: 10),
                                SvgPicture.asset(CustomIcons.edittask),
                                SizedBox(width: 8),
                                Text(StaticStrings.edittask),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
