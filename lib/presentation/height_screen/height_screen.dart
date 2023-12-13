import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_icon_button.dart';

class HeightScreen extends StatelessWidget {
  const HeightScreen({Key? key})
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
                "What’s your height?",
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
              SizedBox(
                height: 135.v,
                width: 74.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "166",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 32.v,
                          right: 3.h,
                        ),
                        child: Text(
                          "165",
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.h),
                        child: Text(
                          "164",
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                width: 156.h,
                child: Divider(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                height: 79.v,
                width: 156.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 156.h,
                        child: Divider(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 2.h,
                          bottom: 12.v,
                        ),
                        child: Text(
                          "cm",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "167",
                        style: theme.textTheme.displayLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                "168",
                style: theme.textTheme.displayMedium,
              ),
              Text(
                "169",
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "170",
                style: theme.textTheme.headlineMedium,
              ),
              Spacer(
                flex: 50,
              ),
              _buildButtonsSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonsSection(BuildContext context) {
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
