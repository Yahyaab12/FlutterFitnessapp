import 'package:flutter/material.dart';
import 'package:yahya_s_application/presentation/splash_screen/splash_screen.dart';
import 'package:yahya_s_application/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:yahya_s_application/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:yahya_s_application/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:yahya_s_application/presentation/gender_screen/gender_screen.dart';
import 'package:yahya_s_application/presentation/gender_two_screen/gender_two_screen.dart';
import 'package:yahya_s_application/presentation/age_screen/age_screen.dart';
import 'package:yahya_s_application/presentation/weight_screen/weight_screen.dart';
import 'package:yahya_s_application/presentation/height_screen/height_screen.dart';
import 'package:yahya_s_application/presentation/goal_screen/goal_screen.dart';
import 'package:yahya_s_application/presentation/activity_level_screen/activity_level_screen.dart';
import 'package:yahya_s_application/presentation/sign_up_two_tab_container_screen/sign_up_two_tab_container_screen.dart';
import 'package:yahya_s_application/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:yahya_s_application/presentation/verification_screen/verification_screen.dart';
import 'package:yahya_s_application/presentation/home_container_screen/home_container_screen.dart';
import 'package:yahya_s_application/presentation/workout_plan_detail_screen/workout_plan_detail_screen.dart';
import 'package:yahya_s_application/presentation/workout_categories_tab_container_screen/workout_categories_tab_container_screen.dart';
import 'package:yahya_s_application/presentation/subscription_screen/subscription_screen.dart';
import 'package:yahya_s_application/presentation/fitness_instructors_screen/fitness_instructors_screen.dart';
import 'package:yahya_s_application/presentation/reviews_tab_container_screen/reviews_tab_container_screen.dart';
import 'package:yahya_s_application/presentation/write_a_review_screen/write_a_review_screen.dart';
import 'package:yahya_s_application/presentation/appointment_screen/appointment_screen.dart';
import 'package:yahya_s_application/presentation/payment_screen/payment_screen.dart';
import 'package:yahya_s_application/presentation/edit_card_screen/edit_card_screen.dart';
import 'package:yahya_s_application/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:yahya_s_application/presentation/payment_completed_screen/payment_completed_screen.dart';
import 'package:yahya_s_application/presentation/video_screen/video_screen.dart';
import 'package:yahya_s_application/presentation/video_pause_screen/video_pause_screen.dart';
import 'package:yahya_s_application/presentation/profile_screen/profile_screen.dart';
import 'package:yahya_s_application/presentation/pro_profile_screen/pro_profile_screen.dart';
import 'package:yahya_s_application/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:yahya_s_application/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:yahya_s_application/presentation/settings_screen/settings_screen.dart';
import 'package:yahya_s_application/presentation/units_of_measure_screen/units_of_measure_screen.dart';
import 'package:yahya_s_application/presentation/notifications_screen/notifications_screen.dart';
import 'package:yahya_s_application/presentation/language_screen/language_screen.dart';
import 'package:yahya_s_application/presentation/language_two_screen/language_two_screen.dart';
import 'package:yahya_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String genderScreen = '/gender_screen';

  static const String genderTwoScreen = '/gender_two_screen';

  static const String ageScreen = '/age_screen';

  static const String weightScreen = '/weight_screen';

  static const String heightScreen = '/height_screen';

  static const String goalScreen = '/goal_screen';

  static const String activityLevelScreen = '/activity_level_screen';

  static const String loginPage = '/login_page';

  static const String loginTwoPage = '/login_two_page';

  static const String signUpPage = '/sign_up_page';

  static const String signUpTwoPage = '/sign_up_two_page';

  static const String signUpTwoTabContainerScreen =
      '/sign_up_two_tab_container_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String workoutPlanDetailScreen = '/workout_plan_detail_screen';

  static const String workoutCategoriesPage = '/workout_categories_page';

  static const String workoutCategoriesTabContainerScreen =
      '/workout_categories_tab_container_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String fitnessInstructorsScreen = '/fitness_instructors_screen';

  static const String reviewsPage = '/reviews_page';

  static const String reviewsTabContainerScreen =
      '/reviews_tab_container_screen';

  static const String writeAReviewScreen = '/write_a_review_screen';

  static const String appointmentScreen = '/appointment_screen';

  static const String paymentScreen = '/payment_screen';

  static const String editCardScreen = '/edit_card_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String paymentCompletedScreen = '/payment_completed_screen';

  static const String videoScreen = '/video_screen';

  static const String videoPauseScreen = '/video_pause_screen';

  static const String insightPage = '/insight_page';

  static const String notificationsOnePage = '/notifications_one_page';

  static const String notificationsOneTabContainerPage =
      '/notifications_one_tab_container_page';

  static const String profileScreen = '/profile_screen';

  static const String proProfileScreen = '/pro_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String settingsScreen = '/settings_screen';

  static const String unitsOfMeasureScreen = '/units_of_measure_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String languageScreen = '/language_screen';

  static const String languageTwoScreen = '/language_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    genderScreen: (context) => GenderScreen(),
    genderTwoScreen: (context) => GenderTwoScreen(),
    ageScreen: (context) => AgeScreen(),
    weightScreen: (context) => WeightScreen(),
    heightScreen: (context) => HeightScreen(),
    goalScreen: (context) => GoalScreen(),
    activityLevelScreen: (context) => ActivityLevelScreen(),
    signUpTwoTabContainerScreen: (context) => SignUpTwoTabContainerScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    verificationScreen: (context) => VerificationScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    workoutPlanDetailScreen: (context) => WorkoutPlanDetailScreen(),
    workoutCategoriesTabContainerScreen: (context) =>
        WorkoutCategoriesTabContainerScreen(),
    subscriptionScreen: (context) => SubscriptionScreen(),
    fitnessInstructorsScreen: (context) => FitnessInstructorsScreen(),
    reviewsTabContainerScreen: (context) => ReviewsTabContainerScreen(),
    writeAReviewScreen: (context) => WriteAReviewScreen(),
    appointmentScreen: (context) => AppointmentScreen(),
    paymentScreen: (context) => PaymentScreen(),
    editCardScreen: (context) => EditCardScreen(),
    addNewCardScreen: (context) => AddNewCardScreen(),
    paymentCompletedScreen: (context) => PaymentCompletedScreen(),
    videoScreen: (context) => VideoScreen(),
    videoPauseScreen: (context) => VideoPauseScreen(),
    profileScreen: (context) => ProfileScreen(),
    proProfileScreen: (context) => ProProfileScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    settingsScreen: (context) => SettingsScreen(),
    unitsOfMeasureScreen: (context) => UnitsOfMeasureScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    languageScreen: (context) => LanguageScreen(),
    languageTwoScreen: (context) => LanguageTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
