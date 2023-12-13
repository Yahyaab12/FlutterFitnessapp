import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 32.h,
              vertical: 17.v,
            ),
            child: Column(
              children: [
                _buildForgotPassword(context),
                SizedBox(height: 29.v),
                CustomElevatedButton(
                  text: "Send",
                  margin: EdgeInsets.symmetric(horizontal: 24.h),
                ),
                SizedBox(height: 5.v),
              ],
            ),
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

  /// Section Widget
  Widget _buildForgotPassword(BuildContext context) {
    return SizedBox(
      height: 292.v,
      width: 311.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Forgot Password?",
                  style: CustomTextStyles.headlineSmallIntegralCFBold,
                ),
                SizedBox(height: 17.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 207.h,
                    child: Text(
                      "Enter your informations below or\nlogin with a other account",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallIntegralCF.copyWith(
                        height: 1.60,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 196.v),
                Text(
                  "Try another way",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          CustomTextFormField(
            width: 311.h,
            controller: emailController,
            hintText: "Email",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            alignment: Alignment.center,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.h),
          ),
        ],
      ),
    );
  }
}
