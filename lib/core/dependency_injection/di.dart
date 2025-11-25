import 'package:get/get.dart';
import 'package:task_manager/core/general_controller/general_controller.dart';
import 'package:task_manager/presentation/screens/auth/auth_controller/auth_controller.dart';
import 'package:task_manager/presentation/screens/home/home_controller/home_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeneralController>(() => GeneralController());
    Get.lazyPut<HomeController>(() => HomeController());

    // ===================== Auth ===================
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
