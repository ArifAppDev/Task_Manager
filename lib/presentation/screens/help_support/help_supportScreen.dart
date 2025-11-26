import 'package:flutter/material.dart';

import 'package:task_manager/core/custom_assets/custom_icons/custom_icons.dart';

import 'package:task_manager/presentation/screens/help_support/inner_widget/faq_button.dart';
import 'package:task_manager/presentation/screens/help_support/inner_widget/mail_usbutton.dart';
import 'package:task_manager/presentation/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:task_manager/utils/app_color/app_colors.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class HelpSupportscreen extends StatelessWidget {
  const HelpSupportscreen({super.key});

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
              //=========================== custom app bar =======================
              CustomAppBar(
                appbarName: 'Help/Support',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 20),

              Text(
                StaticStrings.faqs,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 16),

              // ============== Faqs  button ==========================
              FaqButton(title: 'How do I create a new task?'),
              SizedBox(height: 16),
              FaqButton(title: 'How can I view task details?'),
              SizedBox(height: 16),
              FaqButton(title: 'Can I mark a task as favorite or important?'),
              SizedBox(height: 16),
              FaqButton(title: 'How do I edit or delete a task?'),
              SizedBox(height: 16),
              FaqButton(title: 'Is my data secure?'),
              SizedBox(height: 16),

              Text(
                StaticStrings.needmorehelp,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryText,
                ),
              ),
              SizedBox(height: 16),

              //====================== mail us =========================
              MailUsbutton(icon: CustomIcons.mailus),
            ],
          ),
        ),
      ),
    );
  }
}
