import 'package:get/get.dart';
import 'package:task_manager/presentation/screens/add_task/add_task_screen.dart';
import 'package:task_manager/presentation/screens/auth/email_verify/email_veridy_screen.dart';
import 'package:task_manager/presentation/screens/auth/login/login_screen.dart';
import 'package:task_manager/presentation/screens/auth/new_password/new_password_screen.dart';
import 'package:task_manager/presentation/screens/auth/otp_verify/otp_verify_screen.dart';
import 'package:task_manager/presentation/screens/auth/sign_up/sign_up.dart';
import 'package:task_manager/presentation/screens/edit_task/edit_task_screen.dart';
import 'package:task_manager/presentation/screens/home/home_screen.dart';

import 'package:task_manager/presentation/screens/onboarding/onboarding.dart';
import 'package:task_manager/presentation/screens/profile/profile_screen.dart';
import 'package:task_manager/presentation/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashscreen = '/splashscreen';
  static const String onboardingscreen = '/onboardingscreen';

  // ================= Aucth Screen    =======================
  static const String loginscreen = '/loginscreen';
  static const String signupscreen = '/signupscreen';
  static const String emailveriryscreen = '/emailveriryscreen';
  static const String otpverifyscreen = '/otpverifyscreen';
  static const String newpassscreen = '/newpassscreen';

  static const String homescreen = '/homescreen';
  static const String taskdetailsscreen = '/taskdetailsscreen';
  static const String addtaskscreen = '/addtaskscreen';
  static const String editTaskscreen = '/editTaskscreen';
  static const String profilescreen = '/profilescreen';

  static List<GetPage> routes = [
    GetPage(name: splashscreen, page: () => SplashScreen()),
    GetPage(name: onboardingscreen, page: () => OnboardingScreen()),
    // ================= Aucth Screen    =======================
    GetPage(name: loginscreen, page: () => LoginScreen()),
    GetPage(name: signupscreen, page: () => SignUpScreen()),
    GetPage(name: emailveriryscreen, page: () => EmailVerifyScreen()),
    GetPage(name: otpverifyscreen, page: () => OtpVeridyScreen()),
    GetPage(name: newpassscreen, page: () => NewPasswordScreen()),

    //======================== home screen ===============
    GetPage(name: homescreen, page: () => HomeScreen()),
    GetPage(name: addtaskscreen, page: () => AddTaskScreen()),
    GetPage(name: editTaskscreen, page: () => EditTaskScreen()),

    // =================== profile screen =================
    GetPage(name: profilescreen, page: () => ProfileScreen()),
  ];
}
