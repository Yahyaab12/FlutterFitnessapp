import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_pin_code_text_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Verification",
                style: CustomTextStyles.headlineSmallIntegralCFBold,
              ),
              SizedBox(height: 17.v),
              SizedBox(
                width: 196.h,
                child: Text(
                  "Check your email. We’ve sent you the PIN at your email.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallIntegralCF.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              SizedBox(height: 38.v),
              CustomPinCodeTextField(
                context: context,
                onChanged: (value) {},
              ),
              Spacer(
                flex: 26,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Did you receive any code?",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "Verify",
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                alignment: Alignment.center,
              ),
              Spacer(
                flex: 73,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCircleLeftOnprimary,
        margin: EdgeInsets.fromLTRB(24.h, 12.v, 319.h, 12.v),
      ),
    );
  }
}
