import 'package:flutter/material.dart';
import 'package:task_manager/presentation/widgets/custom_app_bar.dart';
import 'package:task_manager/presentation/widgets/custom_button_onboarding.dart';
import 'package:task_manager/presentation/widgets/custom_textform_field.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class EditTaskScreen extends StatelessWidget {
  const EditTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            // ========== custom App Bar ===========
            CustomAppBar(appbarName: 'Edit Task ', onTap: () {}),
            SizedBox(height: 20),

            // =========== title section ================
            Text(
              StaticStrings.tasktitle,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 6),

            //  ========= texf form field ==============
            CustomTextFormField(
              hinttext: 'e.g. Design Landing Page Header',
              emailcontroller: TextEditingController(),
            ),
            SizedBox(height: 24),

            // =========== Description section ================
            Text(
              StaticStrings.tasktitle,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 6),

            //  ========= texf form field ==============
            CustomTextFormField(
              hinttext: 'e.g. Design Landing Page Header',
              emailcontroller: TextEditingController(),
            ),
            const SizedBox(height: 40),
            // ========== Cusotm Button =============
            CustomButton(title: 'Update Task', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
