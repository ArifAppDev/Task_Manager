import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';

import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class TaskDetailsCard extends StatelessWidget {
  final String tasktitle;
  final String taskdesctiption;

  const TaskDetailsCard({
    super.key,
    required this.tasktitle,
    required this.taskdesctiption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 288,
      width: double.infinity,
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
            padding: const EdgeInsets.only(bottom: 14, top: 8, left: 20),
            child: Text(tasktitle),
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
            padding: const EdgeInsets.only(bottom: 14, top: 10, left: 20),
            child: Text(taskdesctiption),
          ),
          Divider(color: AppColors.primaryColor, thickness: 0.7),
          SizedBox(height: 14),

          Row(
            children: [
              Container(
                width: 114,
                height: 36,
                decoration: BoxDecoration(
                  color: AppColors.redfifty,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.redfifhundred, width: 1),
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
              SizedBox(width: 8),

              Container(
                width: 114,
                height: 36,
                decoration: BoxDecoration(
                  color: AppColors.redfifty,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.primaryColor, width: 1),
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
    );
  }
}
