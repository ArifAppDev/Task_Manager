import 'package:get/route_manager.dart';

import 'package:task_manager/core/routes/app_routes.dart';

apiCheck(int statusCode) {
  if (statusCode == 401) {
    Get.toNamed(AppRoutes.loginscreen);
  } else {}
}
