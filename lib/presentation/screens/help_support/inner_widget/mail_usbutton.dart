import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';

class MailUsbutton extends StatelessWidget {
  final String icon;

  const MailUsbutton({super.key, required this.icon});

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
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Mail Us: ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.bgblack,
                      ),
                    ),

                    TextSpan(
                      text: "(support@taskmanagerapp.com)",
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              SizedBox(
                width: 260,
                child: Text(
                  "Our help desk is available 24/7 to support your workflow.",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500,
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
