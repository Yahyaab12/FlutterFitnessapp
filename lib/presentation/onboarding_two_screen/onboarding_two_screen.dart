import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yahya_s_application/core/app_export.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key})
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
                imagePath: ImageConstant.imgBackground460x375,
                height: 460.v,
                width: 375.h,
              ),
              SizedBox(height: 65.v),
              Container(
                width: 338.h,
                margin: EdgeInsets.only(
                  left: 18.h,
                  right: 19.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Create a workout plan\n",
                        style: CustomTextStyles.headlineSmallIntegralCFRegular,
                      ),
                      TextSpan(
                        text: "to stay fit",
                        style: CustomTextStyles.headlineSmallIntegralCF,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              SizedBox(height: 64.v),
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
        ),
      ),
    );
  }
}
