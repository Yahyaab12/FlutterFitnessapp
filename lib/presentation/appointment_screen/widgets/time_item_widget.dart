import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore: must_be_immutable
class TimeItemWidget extends StatelessWidget {
  const TimeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 7.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "09:00 AM",
          style: TextStyle(
            color: theme.colorScheme.primaryContainer,
            fontSize: 13.fSize,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.primaryContainer,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            16.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
