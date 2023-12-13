import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';

class PaymentCompletedScreen extends StatelessWidget {
  const PaymentCompletedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 45.v),
              Padding(
                padding: EdgeInsets.only(right: 52.h),
                child: Row(
                  children: [
                    Container(
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      margin: EdgeInsets.only(bottom: 4.v),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTickSquare,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPath,
                            height: 7.v,
                            width: 10.h,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "Payment Completed!",
                        style: CustomTextStyles.titleLargeOpenSans,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                width: 224.h,
                margin: EdgeInsets.only(right: 86.h),
                child: Text(
                  "You’ve book a new appointment\nwith your trainer.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMedium15.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
              SizedBox(height: 37.v),
              _buildPaymentCompleted(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildDone(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentCompleted(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Trainer",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage40x40,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 127.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Emily Kevin",
                              style: theme.textTheme.titleSmall,
                            ),
                            Container(
                              height: 13.v,
                              width: 27.h,
                              margin: EdgeInsets.only(bottom: 5.v),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPoint,
                                    height: 13.v,
                                    width: 27.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text(
                                        "4.9",
                                        style: theme.textTheme.labelSmall,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "High Intensity Training",
                        style: CustomTextStyles.bodySmallPrimary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.gray800,
            indent: 2.h,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Date",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "20 October 2021 - Wednesday",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Time",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 1.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "09:30 AM",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgNotificationWhiteA700,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 13.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDone(BuildContext context) {
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
