import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yahya_s_application/core/app_export.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key})
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
                imagePath: ImageConstant.imgBackground,
                height: 460.v,
                width: 375.h,
              ),
              SizedBox(height: 65.v),
              _buildNinetyOneSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyOneSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Column(
        children: [
          SizedBox(
            width: 304.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Meet your coach,\n",
                    style: CustomTextStyles.headlineSmallIntegralCFRegular,
                  ),
                  TextSpan(
                    text: "start your journey",
                    style: CustomTextStyles.headlineSmallIntegralCF,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 154.v),
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
