import '../insight_page/widgets/daycomponent_item_widget.dart';
import '../insight_page/widgets/finishedcomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class InsightPage extends StatelessWidget {
  const InsightPage({Key? key})
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
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              _buildDatePicker(context),
              SizedBox(height: 30.v),
              _buildGraphics(context),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Finished Workout",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              _buildFinishedComponent(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDatePicker(BuildContext context) {
    return SizedBox(
      height: 203.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 60.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 57.v),
                    child: CustomIconButton(
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCircleLeftGray800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 56.v,
                    ),
                    child: Text(
                      "October 2021",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 57.v),
                    child: CustomIconButton(
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCircleLeftGray800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 203.v,
              child: ListView.separated(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 115.v,
                  bottom: 24.v,
                ),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 14.h,
                  );
                },
                itemCount: 7,
                itemBuilder: (context, index) {
                  return DaycomponentItemWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGraphics(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onPrimary,
                width: 8.h,
              ),
              borderRadius: BorderRadiusStyle.circleBorder84,
            ),
            child: Container(
              height: 168.adaptSize,
              width: 168.adaptSize,
              decoration: AppDecoration.outlineOnPrimary1.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder84,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 168.adaptSize,
                      width: 168.adaptSize,
                      child: CircularProgressIndicator(
                        value: 0.5,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 57.v,
                      width: 105.h,
                      margin: EdgeInsets.only(top: 50.v),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "652",
                              style: CustomTextStyles.displaySmallWhiteA700,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: 44.v,
                              width: 104.h,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "Cal",
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Active Calories",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.onPrimary,
                    width: 4.h,
                  ),
                  borderRadius: BorderRadiusStyle.roundedBorder46,
                ),
                child: Container(
                  height: 93.adaptSize,
                  width: 93.adaptSize,
                  decoration: AppDecoration.outlineOnPrimary2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder46,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 93.v,
                          width: 77.h,
                          child: CircularProgressIndicator(
                            value: 0.5,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 17.h,
                            top: 14.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text(
                                  "Steps",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              SizedBox(height: 9.v),
                              Text(
                                "6540",
                                style: CustomTextStyles.titleLargeOpenSans,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.onPrimary,
                    width: 4.h,
                  ),
                  borderRadius: BorderRadiusStyle.roundedBorder46,
                ),
                child: Container(
                  height: 93.adaptSize,
                  width: 93.adaptSize,
                  decoration: AppDecoration.outlineOnPrimary2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder46,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          height: 85.v,
                          width: 46.h,
                          child: CircularProgressIndicator(
                            value: 0.5,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 19.h,
                            top: 13.v,
                            right: 19.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text(
                                  "Time",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              SizedBox(height: 10.v),
                              SizedBox(
                                width: 54.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "45",
                                      style:
                                          CustomTextStyles.titleLargeOpenSans,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 7.v,
                                        bottom: 4.v,
                                      ),
                                      child: Text(
                                        "min",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.onPrimary,
                    width: 4.h,
                  ),
                  borderRadius: BorderRadiusStyle.roundedBorder46,
                ),
                child: Container(
                  height: 93.adaptSize,
                  width: 93.adaptSize,
                  decoration: AppDecoration.outlineOnPrimary2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder46,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 93.adaptSize,
                          width: 93.adaptSize,
                          child: CircularProgressIndicator(
                            value: 0.5,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 13.v,
                            right: 14.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text(
                                  "Heart",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              SizedBox(height: 10.v),
                              SizedBox(
                                width: 59.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "72",
                                      style:
                                          CustomTextStyles.titleLargeOpenSans,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 9.v,
                                        bottom: 2.v,
                                      ),
                                      child: Text(
                                        "bpm",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFinishedComponent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return FinishedcomponentItemWidget();
        },
      ),
    );
  }
}
