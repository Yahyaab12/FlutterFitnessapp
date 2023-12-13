import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PopupForStandartUserDialog extends StatelessWidget {
  const PopupForStandartUserDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 311.h,
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 239.v,
            width: 311.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage239x311,
                  height: 239.v,
                  width: 311.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(16.h),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                      vertical: 21.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer
                        .copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 154.v),
                        Text(
                          "Upgrade to Premium",
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "Subscribe to take an appointment",
                          style: CustomTextStyles.bodyMediumPrimary_1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          CustomElevatedButton(
            text: "Be Premium",
            margin: EdgeInsets.symmetric(horizontal: 32.h),
          ),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 130.h),
              child: Text(
                "Cancel",
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }
}
