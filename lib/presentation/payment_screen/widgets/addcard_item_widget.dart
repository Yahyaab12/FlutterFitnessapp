import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore: must_be_immutable
class AddcardItemWidget extends StatelessWidget {
  const AddcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 115.v,
          width: 62.h,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 49.v,
          ),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup4,
            height: 16.adaptSize,
            width: 16.adaptSize,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
