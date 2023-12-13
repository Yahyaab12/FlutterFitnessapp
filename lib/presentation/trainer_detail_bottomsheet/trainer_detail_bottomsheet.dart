import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TrainerDetailBottomsheet extends StatelessWidget {
  const TrainerDetailBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 22.h,
          vertical: 32.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildNinetyEightRow(context),
            SizedBox(height: 32.v),
            _buildInfoRow(context),
            SizedBox(height: 309.v),
            CustomElevatedButton(
              text: "Book an Appointment",
              margin: EdgeInsets.symmetric(horizontal: 33.h),
            ),
            SizedBox(height: 16.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyEightRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jennifer James",
                  style: CustomTextStyles.titleLargeOpenSansSemiBold,
                ),
                SizedBox(height: 3.v),
                Text(
                  "Functional Strength",
                  style: CustomTextStyles.bodyMediumPrimary_1,
                ),
              ],
            ),
          ),
          CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgCallButton,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInfoRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            child: _buildEightyThreeColumn(
              context,
              titleText: "6",
              subtitleText: "Experience",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: SizedBox(
              height: 54.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                color: appTheme.gray800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: _buildEightyThreeColumn(
              context,
              titleText: "46",
              subtitleText: "Completed",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: SizedBox(
              height: 54.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                color: appTheme.gray800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Column(
              children: [
                Text(
                  "25",
                  style: CustomTextStyles.titleLargeOpenSans,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Active Clients",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildEightyThreeColumn(
    BuildContext context, {
    required String titleText,
    required String subtitleText,
  }) {
    return Column(
      children: [
        Text(
          titleText,
          style: CustomTextStyles.titleLargeOpenSans.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          subtitleText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ],
    );
  }
}
