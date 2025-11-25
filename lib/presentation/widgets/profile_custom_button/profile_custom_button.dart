import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';

class ProfileCustomButton extends StatelessWidget {
  final String title;
  final String icon;
  final IconData? arrowicon;
  const ProfileCustomButton({
    super.key,
    required this.title,
    required this.icon,
    this.arrowicon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.white,
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

      height: 52,
      width: MediaQuery.of(context).size.width,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 20),
              Text(title),
            ],
          ),

          Row(children: [Icon(arrowicon, color: AppColors.primaryColor)]),
        ],
      ),
    );
  }
}
