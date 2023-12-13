import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_icon_button.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 44.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 42.v),
              Text(
                "What’s your goal?",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 15.v),
              Text(
                "This helps us create your personalized plan",
                style: CustomTextStyles.bodySmallIntegralCF,
              ),
              Spacer(
                flex: 49,
              ),
              Text(
                "Gain Weight",
                style: CustomTextStyles.titleLargeOpenSansPrimaryContainer,
              ),
              SizedBox(height: 8.v),
              Text(
                "Lose weight",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 11.v),
              Divider(
                color: theme.colorScheme.primary,
                indent: 33.h,
                endIndent: 33.h,
              ),
              SizedBox(height: 19.v),
              Text(
                "Get fitter",
                style: CustomTextStyles.headlineMediumWhiteA700,
              ),
              SizedBox(height: 19.v),
              Divider(
                color: theme.colorScheme.primary,
                indent: 33.h,
                endIndent: 33.h,
              ),
              SizedBox(height: 15.v),
              Text(
                "Gain more flexible",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 8.v),
              Text(
                "Learn the basic",
                style: CustomTextStyles.titleLargeOpenSansPrimaryContainer,
              ),
              Spacer(
                flex: 50,
              ),
              _buildButtonSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          height: 54.adaptSize,
          width: 54.adaptSize,
          padding: EdgeInsets.all(15.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgBackButton,
          ),
        ),
        CustomElevatedButton(
          width: 120.h,
          text: "Next",
          rightIcon: Container(
            margin: EdgeInsets.only(left: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgChevronright,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
      ],
    );
  }
}
