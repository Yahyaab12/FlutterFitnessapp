import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';

class GenderTwoScreen extends StatelessWidget {
  const GenderTwoScreen({Key? key})
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
                "Tell us about yourself!",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 15.v),
              Container(
                width: 240.h,
                margin: EdgeInsets.only(
                  left: 34.h,
                  right: 39.h,
                ),
                child: Text(
                  "To give you a better experience we need\nto know your gender",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallIntegralCF.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              Spacer(
                flex: 44,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 86.h),
                child: _buildGender(context),
              ),
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 86.h),
                child: _buildGender(context),
              ),
              Spacer(
                flex: 55,
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
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildGender(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 42.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder70,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 19.v),
          CustomImageView(
            imagePath: ImageConstant.imgVenusOnerror,
            height: 48.adaptSize,
            width: 48.adaptSize,
            alignment: Alignment.center,
          ),
          SizedBox(height: 18.v),
          Text(
            "Female",
            style: CustomTextStyles.bodyMediumOnError15,
          ),
        ],
      ),
    );
  }
}
