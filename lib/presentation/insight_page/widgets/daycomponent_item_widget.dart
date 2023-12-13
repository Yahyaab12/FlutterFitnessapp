import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore: must_be_immutable
class DaycomponentItemWidget extends StatelessWidget {
  const DaycomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder22,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "M",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                "16",
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
