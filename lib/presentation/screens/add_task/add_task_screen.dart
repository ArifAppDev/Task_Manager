import 'package:flutter/material.dart';

import 'package:task_manager/presentation/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:task_manager/presentation/widgets/custom_button/custom_button.dart';
import 'package:task_manager/presentation/widgets/custom_textform_field/custom_text_form_field.dart';
import 'package:task_manager/presentation/widgets/custom_nav_bar/custom_nav_bar.dart';
import 'package:task_manager/utils/static_string/static_strings.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(selectedIndex: 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            // ================== custom app bar ===============
            CustomAppBar(appbarName: 'Add Task', onTap: () {}),
            SizedBox(height: 50),

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
            const SizedBox(height: 24),

            // ========== custom Button ==============
            CustomButton(title: 'Save Task', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
