import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_radio_button.dart';

class UnitsOfMeasureScreen extends StatelessWidget {
  UnitsOfMeasureScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = ["lbl_metric", "lbl_imperial"];

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
              _buildEditProfileRadioGroup(context),
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
        text: "Units of Measure",
      ),
    );
  }

  /// Section Widget
  Widget _buildEditProfileRadioGroup(BuildContext context) {
    return Column(
      children: [
        CustomRadioButton(
          width: 311.h,
          text: "Metric",
          value: radioList[0],
          groupValue: radioGroup,
          isRightCheck: true,
          onChange: (value) {
            radioGroup = value;
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 19.v),
          child: CustomRadioButton(
            width: 311.h,
            text: "Imperial",
            value: radioList[1],
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
        ),
      ],
    );
  }
}
