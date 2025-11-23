import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/route_manager.dart';
import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:task_manager/core/routes/app_routes.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';

class CustomNavBar extends StatefulWidget {
  final int selectedIndex;
  const CustomNavBar({super.key, required this.selectedIndex});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int myIndex = 0;
  @override
  void initState() {
    myIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> title = ['My Tasks', 'Add Task', 'Profile'];
    List<String> icons = [
      CustomIcons.home,
      CustomIcons.addtask,
      CustomIcons.profile,
    ];
    return Container(
      height: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppColors.appbackround,
        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            spreadRadius: 0,
            blurStyle: BlurStyle.outer,
            color: Colors.black12,
            offset: Offset(0, 1),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(icons.length, (index) {
          return Column(
            children: [
              // ================ icon ================
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: myIndex == index ? AppColors.primaryColor : null,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      myIndex = index;
                    });

                    if (myIndex == 0) {
                      Get.toNamed(AppRoutes.homescreen);
                    } else if (myIndex == 1) {
                      Get.toNamed(AppRoutes.addtaskscreen);
                    } else {
                      Get.toNamed(AppRoutes.profilescreen);
                    }
                  },
                  child: SvgPicture.asset(
                    icons[index],
                    colorFilter: ColorFilter.mode(
                      myIndex == index ? Colors.white : Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              //==============  title ===================
              Text(title[index]),
            ],
          );
        }),
      ),
    );
  }
}
