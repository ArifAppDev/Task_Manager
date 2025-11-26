import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';

class FaqButton extends StatelessWidget {
  final String title;

  const FaqButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            spreadRadius: 0,
            blurStyle: BlurStyle.outer,
            color: Colors.black12,
            offset: Offset(1, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryText,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.arrow_forward_ios, color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
