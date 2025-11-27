import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager/api_service/api_check.dart';
import 'package:task_manager/api_service/api_url.dart';
import 'package:task_manager/presentation/screens/home/home_controller/home_controller.dart';

class AddTaskController extends GetxController {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  // This allows access to the controller state's and logic
  var homeController = Get.find<HomeController>();

  addTask() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('token');

    try {
      var body = {
        "title": titleController.text,
        "description": descriptionController.text,
      };

      var header = {
        "Content-Type": "application/json",
        "Authorization": 'Bearer $token',
      };

      var response = await http.post(
        Uri.parse(ApiUrl.addtask),
        body: jsonEncode(body),
        headers: header,
      );

      if (response.statusCode == 201) {
        var decodedResponse = jsonDecode(response.body);
        Get.snackbar(decodedResponse["status"], decodedResponse["message"]);
        clearText();
        homeController.getTask();
      } else {
        apiCheck(response.statusCode);
      }
    } catch (error) {
      print("Error ===========>>>>>>>>>>>>>>>> $error");
    }
  }

  clearText() {
    titleController.clear();
    descriptionController.clear();
  }
}
