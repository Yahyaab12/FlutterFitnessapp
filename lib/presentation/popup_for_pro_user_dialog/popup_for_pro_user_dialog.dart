import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PopupForProUserDialog extends StatelessWidget {
  const PopupForProUserDialog({Key? key})
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
            height: 176.v,
            width: 311.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage176x311,
                  height: 176.v,
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
                      horizontal: 16.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer
                        .copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 105.v),
                          child: Column(
                            children: [
                              Text(
                                "Lower Body Strength",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 2.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 11.v,
                                    width: 2.h,
                                    margin: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 5.v,
                                    ),
                                    decoration: BoxDecoration(
                                      color: appTheme.redA40001,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text(
                                      "05 Workouts  for Beginner",
                                      style:
                                          CustomTextStyles.bodyMediumPrimary_1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 33.h,
                          margin: EdgeInsets.only(
                            top: 130.v,
                            bottom: 2.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillRedA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "PRO",
                            style: theme.textTheme.labelMedium,
                          ),
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
            text: "Take Appointment",
            margin: EdgeInsets.symmetric(horizontal: 32.h),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgChevronright,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          SizedBox(height: 23.v),
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
