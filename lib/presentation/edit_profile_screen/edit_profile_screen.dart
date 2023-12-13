import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_icon_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key})
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
            horizontal: 32.h,
            vertical: 22.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 120.v,
                  width: 136.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img59120x120,
                        height: 120.adaptSize,
                        width: 120.adaptSize,
                        radius: BorderRadius.circular(
                          60.h,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      CustomIconButton(
                        height: 46.adaptSize,
                        width: 46.adaptSize,
                        padding: EdgeInsets.all(11.h),
                        decoration: IconButtonStyleHelper.fillOnPrimary,
                        alignment: Alignment.bottomRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 46.v),
              Divider(),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Name",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Sarah Wegan",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 12.v),
              Divider(),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Email",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Sarah145@mail.com",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 13.v),
              Divider(),
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
        text: "Edit Profile",
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
}
