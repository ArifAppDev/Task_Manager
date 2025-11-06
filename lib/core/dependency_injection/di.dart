import 'package:get/get.dart';
import 'package:task_manager/core/general_controller/general_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    // Onboarding

    Get.lazyPut<GeneralController>(() => GeneralController());
  }
}
