import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_switch.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

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
            vertical: 20.v,
          ),
          child: Column(
            children: [
              Divider(),
              SizedBox(height: 16.v),
              _buildProfileList1(context),
              SizedBox(height: 18.v),
              _buildProfileList2(context),
              Spacer(),
              SizedBox(height: 20.v),
              Container(
                width: 230.h,
                margin: EdgeInsets.only(
                  left: 39.h,
                  right: 40.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "You can manage your app notification permission in your",
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: " Phone Settings",
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
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
        text: "Notifications",
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileList1(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text(
                "Workout Reminders",
                style: theme.textTheme.titleSmall,
              ),
            ),
            CustomSwitch(
              value: isSelectedSwitch,
              onChange: (value) {
                isSelectedSwitch = value;
              },
            ),
          ],
        ),
        SizedBox(height: 19.v),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfileList2(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(
                "Program Notifications",
                style: theme.textTheme.titleSmall,
              ),
            ),
            CustomSwitch(
              value: isSelectedSwitch1,
              onChange: (value) {
                isSelectedSwitch1 = value;
              },
            ),
          ],
        ),
        SizedBox(height: 19.v),
        Divider(),
      ],
    );
  }
}
