import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore: must_be_immutable
class ProfilelistItemWidget extends StatelessWidget {
  const ProfilelistItemWidget({Key? key})
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
                "Edit Profile",
                style: theme.textTheme.titleSmall,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgDownGray300,
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
