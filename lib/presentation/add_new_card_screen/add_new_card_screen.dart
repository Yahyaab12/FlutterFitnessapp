import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_checkbox_button.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_text_form_field.dart';

class AddNewCardScreen extends StatelessWidget {
  AddNewCardScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController cvcController = TextEditingController();

  bool defaultPaymentCheckbox = false;

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
              horizontal: 24.h,
              vertical: 20.v,
            ),
            child: Column(
              children: [
                _buildCard(context),
                SizedBox(height: 42.v),
                _buildPaymentForm(context),
                SizedBox(height: 23.v),
                _buildDefaultPaymentCheckbox(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildDoneButton(context),
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
        text: "Add New Card",
      ),
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return SizedBox(
      height: 176.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage176x327,
            height: 176.v,
            width: 327.h,
            radius: BorderRadius.circular(
              16.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 24.h,
                bottom: 14.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVisa,
                    height: 24.v,
                    width: 77.h,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 59.v),
                  Text(
                    "HOLDER NAME",
                    style: CustomTextStyles.bodyMedium15,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "0000 0000 0000 0000",
                    style: CustomTextStyles.titleLargeOpenSansSemiBold,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentForm(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: nameController,
          hintText: "Card Holder Name",
          contentPadding: EdgeInsets.symmetric(horizontal: 16.h),
        ),
        SizedBox(height: 37.v),
        CustomTextFormField(
          controller: cardNumberController,
          hintText: "Card Number",
          textInputType: TextInputType.number,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.h),
        ),
        SizedBox(height: 37.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                children: [
                  Text(
                    "Expiry (MM/YY)",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 15.v),
                  SizedBox(
                    width: 153.h,
                    child: Divider(),
                  ),
                ],
              ),
            ),
            CustomTextFormField(
              width: 153.h,
              controller: cvcController,
              hintText: "CVC",
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.h),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDefaultPaymentCheckbox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CustomCheckboxButton(
        alignment: Alignment.centerLeft,
        text: "Set as default payment card",
        value: defaultPaymentCheckbox,
        padding: EdgeInsets.symmetric(vertical: 2.v),
        onChange: (value) {
          defaultPaymentCheckbox = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDoneButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Done",
      margin: EdgeInsets.only(
        left: 56.h,
        right: 56.h,
        bottom: 32.v,
      ),
    );
  }
}
