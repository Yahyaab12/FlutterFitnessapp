import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';

class EditCardScreen extends StatelessWidget {
  const EditCardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildCard(context),
              SizedBox(height: 21.v),
              _buildLabel(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSave(context),
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
        text: "Edit Card",
      ),
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return SizedBox(
      height: 176.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.center,
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
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 24.h,
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
                    "MEGAN SUSAN",
                    style: CustomTextStyles.bodyMedium15,
                  ),
                  Text(
                    "5124 3256 6589 2048",
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
  Widget _buildInput3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Expiry (MM/YY)",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
                SizedBox(height: 4.v),
                Text(
                  "01 - 23",
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: 153.h,
            child: Divider(),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInput4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "CVC",
            style: CustomTextStyles.bodySmallPrimary,
          ),
        ),
        SizedBox(height: 5.v),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "696",
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 14.v),
        SizedBox(
          width: 153.h,
          child: Divider(),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLabel(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Column(
        children: [
          SizedBox(
            height: 322.v,
            width: 332.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildInput(context),
                        SizedBox(height: 20.v),
                        _buildInput(context),
                        SizedBox(height: 20.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildInput3(context),
                            _buildInput4(context),
                          ],
                        ),
                        SizedBox(height: 78.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "Delete Card",
                              style: CustomTextStyles.titleMediumRedA400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 42.v),
                    child: SizedBox(
                      width: 327.h,
                      child: Divider(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            indent: 6.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      text: "Save",
      margin: EdgeInsets.only(
        left: 56.h,
        right: 56.h,
        bottom: 32.v,
      ),
    );
  }

  /// Common widget
  Widget _buildInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "Card Number",
            style: CustomTextStyles.bodySmallPrimary,
          ),
        ),
        SizedBox(height: 5.v),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "5124 -  3256 - 6589 - 2048",
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 14.v),
        Divider(),
      ],
    );
  }
}
