import 'package:get/get.dart';
import 'package:task_manager/presentation/screens/account_setting/account_screen.dart';
import 'package:task_manager/presentation/screens/add_task/add_task_screen.dart';
import 'package:task_manager/presentation/screens/auth/email_verify/email_veridy_screen.dart';
import 'package:task_manager/presentation/screens/auth/login/login_screen.dart';
import 'package:task_manager/presentation/screens/auth/new_password/new_password_screen.dart';
import 'package:task_manager/presentation/screens/auth/otp_verify/otp_verify_screen.dart';
import 'package:task_manager/presentation/screens/auth/sign_up/sign_up.dart';
import 'package:task_manager/presentation/screens/change_password/change_passwordScreen.dart';
import 'package:task_manager/presentation/screens/edit_profile/edit_profile_screen.dart';
import 'package:task_manager/presentation/screens/edit_task/edit_task_screen.dart';
import 'package:task_manager/presentation/screens/help_support/help_supportScreen.dart';
import 'package:task_manager/presentation/screens/home/home_screen.dart';
import 'package:task_manager/presentation/screens/my_profile/my_profile_screen.dart';

import 'package:task_manager/presentation/screens/onboarding/onboarding.dart';
import 'package:task_manager/presentation/screens/privacy_policy/privacy_policyScreen.dart';
import 'package:task_manager/presentation/screens/profile/profile_screen.dart';
import 'package:task_manager/presentation/screens/splash_screen/splash_screen.dart';
import 'package:task_manager/presentation/terms_condition/terms_conditionScreen.dart';

class AppRoutes {
  static const String splashscreen = '/splashscreen';
  static const String onboardingscreen = '/onboardingscreen';

  // ================= Aucth Screen    =======================
  static const String loginscreen = '/loginscreen';
  static const String signupscreen = '/signupscreen';
  static const String emailveriryscreen = '/emailveriryscreen';
  static const String otpverifyscreen = '/otpverifyscreen';
  static const String newpassscreen = '/newpassscreen';
  //============================= home  ==========================

  static const String homescreen = '/homescreen';
  static const String taskdetailsscreen = '/taskdetailsscreen';
  static const String addtaskscreen = '/addtaskscreen';
  static const String editTaskscreen = '/editTaskscreen';
  //============================ profile ==========================
  static const String profilescreen = '/profilescreen';
  static const String myProfilescreen = '/myProfilescreen';
  static const String accoutSettingscreen = '/accoutSettingscreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String editprofilescreen = '/editprofilescreen';
  static const String termsconditionscreen = '/termsconditionscreen';
  static const String privacypolicyScreen = '/privacypolicyScreen';
  static const String helosupportScreen = '/helosupportScreen';

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
    GetPage(name: myProfilescreen, page: () => MyProfileScreen()),
    GetPage(name: accoutSettingscreen, page: () => AccountScreen()),
    GetPage(name: changePasswordScreen, page: () => ChangePasswordScreen()),
    GetPage(name: editprofilescreen, page: () => EditProfileScreen()),
    GetPage(name: termsconditionscreen, page: () => TermsConditionscreen()),
    GetPage(name: privacypolicyScreen, page: () => PrivacyPolicyscreen()),
    GetPage(name: helosupportScreen, page: () => HelpSupportscreen()),
  ];
}
