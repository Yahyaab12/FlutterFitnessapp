import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_icon_button.dart';

class ActivityLevelScreen extends StatelessWidget {
  const ActivityLevelScreen({Key? key})
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
            horizontal: 25.h,
            vertical: 44.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 41.v),
              Container(
                width: 289.h,
                margin: EdgeInsets.symmetric(horizontal: 18.h),
                child: Text(
                  "Your regular physical\nactivity level?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "This helps us create your personalized plan",
                style: CustomTextStyles.bodySmallIntegralCF,
              ),
              Spacer(
                flex: 44,
              ),
              Text(
                "Rookie",
                style: CustomTextStyles.titleLargeOpenSansPrimaryContainer,
              ),
              SizedBox(height: 10.v),
              Text(
                "Beginner",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 11.v),
              Divider(
                color: theme.colorScheme.primary,
                indent: 39.h,
                endIndent: 39.h,
              ),
              SizedBox(height: 22.v),
              Text(
                "Intermediate",
                style: CustomTextStyles.headlineMediumWhiteA700,
              ),
              SizedBox(height: 16.v),
              Divider(
                color: theme.colorScheme.primary,
                indent: 39.h,
                endIndent: 39.h,
              ),
              SizedBox(height: 15.v),
              Text(
                "Advance",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 8.v),
              Text(
                "True Beast",
                style: CustomTextStyles.titleLargeOpenSansPrimaryContainer,
              ),
              Spacer(
                flex: 55,
              ),
              _buildActivityLevelButtons(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildActivityLevelButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
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
            text: "Start",
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
      ),
    );
  }
}
