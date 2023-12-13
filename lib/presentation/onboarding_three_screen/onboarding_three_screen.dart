import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBackground1,
                height: 460.v,
                width: 375.h,
              ),
              SizedBox(height: 64.v),
              _buildStartNowSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStartNowSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 44.h),
      child: Column(
        children: [
          SizedBox(
            width: 286.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Action is the\n",
                    style: CustomTextStyles.headlineSmallIntegralCFRegular,
                  ),
                  TextSpan(
                    text: "key to all success",
                    style: CustomTextStyles.headlineSmallIntegralCF,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50.v),
          CustomElevatedButton(
            width: 185.h,
            text: "Start Now",
            rightIcon: Container(
              margin: EdgeInsets.only(left: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgChevronright,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          SizedBox(height: 56.v),
          SizedBox(
            height: 4.v,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 10,
                activeDotColor: theme.colorScheme.primary,
                dotColor: appTheme.gray800,
                dotHeight: 4.v,
                dotWidth: 16.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
