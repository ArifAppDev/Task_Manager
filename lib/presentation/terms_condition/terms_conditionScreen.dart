import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:task_manager/presentation/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';

class TermsConditionscreen extends StatelessWidget {
  const TermsConditionscreen({super.key});

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
              // ============== custom app abr =====================
              CustomAppBar(
                appbarName: 'Terms & Condition',
                onTap: () {
                  Get.back();
                },
              ),
              SizedBox(height: 20),

              Text(
                "Terms & Conditions",
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
                  "Welcome to the Task Manager App. By accessing or using this application, you agree to the following terms and conditions:",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),

              Text(
                "1. Use of the App",
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
                  "This app is designed to help users create, manage, and track personal or professional tasks efficiently. By using the app, you agree to use it responsibly and only for lawful purposes.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "2. Accuracy of Information",
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
                  "All tasks, notes, and other information entered by the user are stored securely. While we strive to maintain accurate task management functionality, the app is not responsible for missed deadlines, incorrect entries, or user-generated errors.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "3. User Responsibility",
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
                  "Users are solely responsible for managing their tasks, reminders, and any personal or professional outcomes related to the completion or non-completion of tasks created within the app.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "4. Data Collection",
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
                  "We respect your privacy. The Task Manager App may collect limited personal data (such as name, email, and usage patterns) solely for improving user experience. No data is shared with third parties without user consent.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "5. Limitation of Liability",
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
                  "We are not liable for any loss of productivity, missed deadlines, or damages resulting from your use of the app. The app is a productivity tool and should be used at your discretion.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "6. Third-Party Links",
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
                  "If the app connects to any third-party tools (e.g., calendar, email), we are not responsible for their data policies or service availability. Use of such services is subject to their respective terms.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "7. Changes to Terms",
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
                  "We reserve the right to update these Terms & Conditions at any time. Continued use of the app following any changes will constitute your acceptance of those revised terms.",
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
