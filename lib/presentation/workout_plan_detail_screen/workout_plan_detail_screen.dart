import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_text_form_field.dart';

class WorkoutPlanDetailScreen extends StatelessWidget {
  WorkoutPlanDetailScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController timeController = TextEditingController();

  TextEditingController calCounterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage338x375,
                height: 338.v,
                width: 375.h,
                alignment: Alignment.topCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCircleLeft,
                height: 32.adaptSize,
                width: 32.adaptSize,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 56.v,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 33.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.customBorderTL32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildInfoSection(context),
                      SizedBox(height: 31.v),
                      _buildTitleSection(context),
                      SizedBox(height: 16.v),
                      _buildTitleSection(context),
                      SizedBox(height: 22.v),
                    ],
                  ),
                ),
              ),
              _buildButtonSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInfoSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 267.v,
        width: 307.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 79.v),
                child: Row(
                  children: [
                    CustomTextFormField(
                      width: 86.h,
                      controller: timeController,
                      hintText: "60 min",
                      hintStyle: theme.textTheme.bodyMedium!,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(5.h, 5.v, 6.h, 5.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlay,
                          height: 19.adaptSize,
                          width: 19.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 29.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
                      filled: true,
                      fillColor: theme.colorScheme.onPrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: CustomTextFormField(
                        width: 89.h,
                        controller: calCounterController,
                        hintText: "350 Cal",
                        hintStyle: theme.textTheme.bodyMedium!,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(5.h, 5.v, 6.h, 5.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFlame,
                            height: 19.adaptSize,
                            width: 19.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 29.v,
                        ),
                        borderDecoration:
                            TextFormFieldStyleHelper.fillOnPrimary,
                        filled: true,
                        fillColor: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Day 01 - Warm Up",
                    style: CustomTextStyles.titleLargeOpenSansSemiBold,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "04 Workouts for Beginner",
                    style: CustomTextStyles.bodyMediumPrimary_1,
                  ),
                  SizedBox(height: 90.v),
                  SizedBox(
                    width: 307.h,
                    child: Text(
                      "Want your body to be healthy. Join our program with directions according to body’s goals. Increasing physical strength is the goal of strenght training. Maintain body fitness by doing physical exercise at least 2-3 times a week. ",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium15.copyWith(
                        height: 1.40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 55.h,
          vertical: 31.v,
        ),
        decoration:
            AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 77.v),
            CustomElevatedButton(
              text: "Start Workout",
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTitleSection(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 76.v,
            width: 82.h,
            radius: BorderRadius.horizontal(
              left: Radius.circular(12.h),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 122.h,
                  child: Text(
                    "Stability Training Basics",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall!.copyWith(
                      height: 1.20,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Text(
                  "0:30",
                  style: CustomTextStyles.bodyMediumPrimary_1,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 26.v,
              right: 16.h,
              bottom: 26.v,
            ),
          ),
        ],
      ),
    );
  }
}
