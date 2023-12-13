import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore: must_be_immutable
class SettingsprofilelistItemWidget extends StatelessWidget {
  const SettingsprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text(
                "Units of Measure",
                style: theme.textTheme.titleSmall,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgDown,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ],
        ),
        SizedBox(height: 18.v),
        Divider(),
      ],
    );
  }
}
