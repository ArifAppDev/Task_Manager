import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:task_manager/api_service/api_url.dart';
import 'package:task_manager/core/routes/app_routes.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  // ======================= login method ==================
  void login() async {
    try {
      var body = {
        "email": emailController.text,
        "password": passController.text,
      };

      var response = await http.post(Uri.parse(ApiUrl.login));

      if (response.statusCode == 200) {
        var decodedResponse = jsonDecode(response.body);
        Get.toNamed(AppRoutes.homescreen);
        Get.snackbar(
          decodedResponse.body["status"],
          decodedResponse.body["message"],
        );
      } else {
        print("Error ===========>>>>>>>>>>>>>> ${response.statusCode}");
      }
    } catch (e) {
      print("Error ================>>>>>>>>>>>>>>>> $e");
    }
  }
}
