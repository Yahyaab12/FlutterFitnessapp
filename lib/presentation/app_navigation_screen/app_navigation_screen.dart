import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Gender",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.genderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Gender Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.genderTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Age",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.ageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Weight",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.weightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Height",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.heightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Goal",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.goalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Activity Level",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.activityLevelScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Two - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Workout Plan Detail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.workoutPlanDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Workout Categories - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.workoutCategoriesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Subscription",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.subscriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Fitness Instructors",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.fitnessInstructorsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reviews - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.reviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Write a Review",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.writeAReviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Appointment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appointmentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Completed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentCompletedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Video",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.videoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Video Pause",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.videoPauseScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pro Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.proProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Privacy Policy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Units of Measure",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.unitsOfMeasureScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Language",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Language Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.languageTwoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
