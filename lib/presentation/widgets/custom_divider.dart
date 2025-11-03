import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/colors/app_colors.dart';
import 'package:task_manager/core/utils/static_string/static_strings.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.slate, thickness: 1.9)),
        SizedBox(width: 10),
        Text(
          StaticStrings.or,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.bgblack,
          ),
        ),
        SizedBox(width: 10),

        Expanded(child: Divider(color: AppColors.slate, thickness: 1.9)),
      ],
    );
  }
}
