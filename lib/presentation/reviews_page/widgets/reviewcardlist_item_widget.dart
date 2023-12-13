import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore: must_be_immutable
class ReviewcardlistItemWidget extends StatelessWidget {
  const ReviewcardlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img47,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 7.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "Sharon Jem",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  height: 13.v,
                  width: 27.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 9.v,
                    bottom: 9.v,
                  ),
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
                            "4.8",
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "2d ago",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.v),
            SizedBox(
              width: 295.h,
              child: Text(
                "Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.23,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
