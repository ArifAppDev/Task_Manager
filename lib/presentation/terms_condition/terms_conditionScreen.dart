import 'package:flutter/material.dart';
import 'package:task_manager/presentation/widgets/custom_app_bar/custom_app_bar.dart';

class TermsConditionscreen extends StatelessWidget {
  const TermsConditionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              // ============== custom app abr =====================
              CustomAppBar(appbarName: 'Terms & Condition', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
