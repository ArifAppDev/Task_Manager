import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager/api_service/api_check.dart';
import 'package:task_manager/api_service/api_url.dart';
import 'package:task_manager/core/routes/app_routes.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  // ======================= login method ==================
  void login() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      var body = {
        "email": emailController.text,
        "password": passController.text,
      };

      var header = {"Content-Type": "application/json"};

      var response = await http.post(
        Uri.parse(ApiUrl.login),
        body: jsonEncode(body),
        headers: header,
      );
      print("body ===========>>>>>>>>>>>>>> $body");

      if (response.statusCode == 200) {
        var decodedResponse = jsonDecode(response.body);
        await prefs.setString('token', decodedResponse["data"]["token"]);

        Get.toNamed(AppRoutes.homescreen);

        Get.snackbar(decodedResponse["status"], decodedResponse["message"]);

        final String? token = prefs.getString('token');
        print("Token ===========>>>>>>>>>>>>>> ${token.toString()}");
      } else {
        print("Error ===========>>>>>>>>>>>>>> ${response.statusCode}");
        apiCheck(response.statusCode);
      }
    } catch (e) {
      print("Error ================>>>>>>>>>>>>>>>> $e");
    }
  }
}
