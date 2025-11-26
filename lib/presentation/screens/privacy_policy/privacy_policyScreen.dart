import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:task_manager/presentation/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';

class PrivacyPolicyscreen extends StatelessWidget {
  const PrivacyPolicyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              // ===================== Custom app bar ===========================
              CustomAppBar(
                appbarName: 'Privacy policy',
                onTap: () {
                  Get.back();
                },
              ),
              SizedBox(height: 20),
              Text(
                "Privacy Policy - Task Manager App",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Your privacy is important to us. This Privacy Policy outlines how the Task Manager App handles your information and protects your data.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "1. Information Collection",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "The Task Manager App may collect limited information such as your name, email address, and preferences — strictly for the purpose of enhancing your task management experience. We do not collect sensitive personal information unnecessarily",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "2. Local Storage",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Your tasks, subtasks, and user preferences are securely stored in our system or locally on your device (depending on platform settings). This data is used solely to support the app's features like scheduling, notifications, and user customization.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "3. No Tracking",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "We do not use third-party trackers or intrusive analytics tools to monitor your behavior. Any performance monitoring is strictly anonymized and used internally to improve the app experience.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "4. Static Data Display",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "If the app integrates with external tools (e.g., calendar, cloud storage), those services are governed by their own privacy policies. We do not control or assume responsibility for their data handling practices",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "5. Third-Party Services",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "We implement industry-standard measures to ensure your information is protected from unauthorized access, alteration, or misuse. This includes encryption, secure servers, and routine maintenance.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "6. Data Security",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "You retain full control over your account data. You can delete or export your tasks and personal information at any time through your profile settings (if applicable).",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "7. Policy Updates",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "This Privacy Policy may be updated periodically. Any changes will be clearly communicated within the app. Continued use after updates indicates your acceptance of the revised policy.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(height: 4),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "If you have any questions or concerns regarding privacy, please contact us at support@taskmanagerapp.com.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
