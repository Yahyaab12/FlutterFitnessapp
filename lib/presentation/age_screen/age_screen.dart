import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_icon_button.dart';

class AgeScreen extends StatelessWidget {
  const AgeScreen({Key? key})
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
              SizedBox(height: 41.v),
              Text(
                "How old are you ?",
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
                "33",
                style: theme.textTheme.headlineMedium,
              ),
              Text(
                "34",
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "35",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 2.v),
              SizedBox(
                width: 113.h,
                child: Divider(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                "36",
                style: theme.textTheme.displayLarge,
              ),
              SizedBox(
                width: 113.h,
                child: Divider(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                "37",
                style: theme.textTheme.displayMedium,
              ),
              Text(
                "38",
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "39",
                style: theme.textTheme.headlineMedium,
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
