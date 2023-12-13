import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore: must_be_immutable
class SubscriptionlistItemWidget extends StatelessWidget {
  const SubscriptionlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineRedA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRadio,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 10.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monthly",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Pay monthly, cancel any time",
                  style: CustomTextStyles.bodySmallRedA400019,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 26.v,
            ),
            child: Text(
              "",
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              bottom: 16.v,
            ),
            child: Text(
              "19.99",
              style: CustomTextStyles.titleLargeOpenSansSemiBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 9.v,
              bottom: 19.v,
            ),
            child: Text(
              "/m",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
