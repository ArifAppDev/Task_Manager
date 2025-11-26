import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  final String appbarName;
  final VoidCallback onTap;

  const CustomAppBar({
    super.key,
    required this.appbarName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
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
              child: Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
            ),
          ),
        ),

        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              appbarName,
              style: TextStyle(
                color: AppColors.bgblack,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        SizedBox(width: 30),
      ],
    );
  }
}
