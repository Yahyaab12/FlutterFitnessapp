import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_text_form_field.dart';

class WriteAReviewScreen extends StatelessWidget {
  WriteAReviewScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController ratingController = TextEditingController();

  TextEditingController reviewOptionalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 62.h),
                  child: Text(
                    "4.6",
                    style: CustomTextStyles.titleLargeOpenSansSemiBold,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              _buildRatingColumn(context),
              SizedBox(height: 24.v),
              CustomTextFormField(
                controller: reviewOptionalController,
                hintText: "Review (Optional)",
                textInputAction: TextInputAction.done,
                maxLines: 9,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 11.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
                filled: true,
                fillColor: theme.colorScheme.onPrimary,
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "Send",
                margin: EdgeInsets.symmetric(horizontal: 32.h),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCircleLeftOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Write a Review",
      ),
    );
  }

  /// Section Widget
  Widget _buildRatingColumn(BuildContext context) {
    return Container(
      width: 327.h,
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 61.h),
        child: CustomTextFormField(
          controller: ratingController,
          hintText: "Rating",
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 5.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillPrimary,
          filled: true,
          fillColor: theme.colorScheme.primary,
        ),
      ),
    );
  }
}
