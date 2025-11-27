import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager/api_service/api_check.dart';
import 'package:task_manager/api_service/api_url.dart';

import 'package:task_manager/presentation/screens/home/model/task_model.dart';

class HomeController extends GetxController {
  RxList<Map<String, dynamic>> taskDetails = [
    {
      'title': 'Design Landing Page Header',
      'des':
          'Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.',
    },
    {
      'title': 'Develop Onboarding Screens',
      'des':
          'Design a 3-step onboarding flow to introduce users to core app features using illustrations and concise text.',
    },
    {
      'title': 'Organize Task Card Components',
      'des':
          'Build reusable task card UI elements for listing, prioritizing, and editing individual tasks.',
    },
    {
      'title': 'Prepare Terms & Privacy Pages',
      'des':
          'Create UI layouts for Terms & Conditions and Privacy Policy using scrollable content and soft brand styling.',
    },
    {
      'title': 'Build Calendar View Layout',
      'des':
          'Design a visual calendar interface to display upcoming tasks and deadlines with status indicators.',
    },
  ].obs;

  Rx<TaskModel> taskModel = TaskModel().obs;
  RxBool isLoading = false.obs;

  getTask() async {
    isLoading.value = true;
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? token = prefs.getString('token');

    try {
      var header = {
        "Content-Type": "application/json",
        "Authorization": 'Bearer $token',
      };

      var response = await http.get(headers: header, Uri.parse(ApiUrl.gettask));

      if (response.statusCode == 200) {
        taskModel.value = TaskModel.fromJson(jsonDecode(response.body));

        isLoading.value = false;
      } else {
        apiCheck(response.statusCode);

        isLoading.value = false;
      }
    } catch (error) {}
  }

  @override
  void onInit() {
    getTask();
    super.onInit();
  }
}
