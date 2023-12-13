import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';

class FitnessInstructorsScreen extends StatelessWidget {
  const FitnessInstructorsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  _buildTrainerCardOne(context),
                  SizedBox(height: 16.v),
                  _buildTrainerCardTwo(context),
                  SizedBox(height: 16.v),
                  _buildTrainerCardThree(context),
                  SizedBox(height: 16.v),
                  _buildTrainerCardFour(context),
                  SizedBox(height: 16.v),
                  _buildTrainerCardFive(context),
                  SizedBox(height: 16.v),
                  _buildTrainerCardSix(context),
                  SizedBox(height: 16.v),
                  _buildFitnessInstructor(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCircleLeftOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Fitness Trainers",
      ),
    );
  }

  /// Section Widget
  Widget _buildTrainerCardOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage64x64,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
            margin: EdgeInsets.only(
              left: 7.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Richard Will",
                      style: theme.textTheme.titleMedium,
                    ),
                    Container(
                      width: 33.h,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 3.v,
                        bottom: 4.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Text(
                        "4.8",
                        style: CustomTextStyles.labelMediumOnError,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  "High Intensity Training",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 11.v),
                Text(
                  "5 years experience",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 24.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrainerCardTwo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage7,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
            margin: EdgeInsets.only(
              left: 7.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jennifer James",
                      style: theme.textTheme.titleMedium,
                    ),
                    Container(
                      width: 33.h,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 2.v,
                        bottom: 5.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Text(
                        "4.6",
                        style: CustomTextStyles.labelMediumOnError,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Functional Strength",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "4 years experience",
                    style: CustomTextStyles.bodySmallPrimary,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 24.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrainerCardThree(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage8,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
            margin: EdgeInsets.only(
              left: 7.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Brian Edward",
                      style: theme.textTheme.titleMedium,
                    ),
                    Container(
                      width: 33.h,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        top: 3.v,
                        bottom: 4.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Text(
                        "4.5",
                        style: CustomTextStyles.labelMediumOnError,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  "Strength Training",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 11.v),
                Text(
                  "6 years experience",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 24.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrainerCardFour(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
            margin: EdgeInsets.only(
              left: 7.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 136.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Emily Kevin",
                        style: theme.textTheme.titleMedium,
                      ),
                      Container(
                        width: 33.h,
                        margin: EdgeInsets.only(bottom: 6.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Text(
                          "4.9",
                          style: CustomTextStyles.labelMediumOnError,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "High Intensity Training",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 11.v),
                Text(
                  "2 years experience",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 24.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrainerCardFive(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage10,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
            margin: EdgeInsets.only(
              left: 7.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Rebecca Smith",
                      style: theme.textTheme.titleMedium,
                    ),
                    Container(
                      width: 33.h,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        top: 3.v,
                        bottom: 4.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Text(
                        "4.8",
                        style: CustomTextStyles.labelMediumOnError,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  "Functional Strength",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 11.v),
                Text(
                  "8 years experience",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 24.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrainerCardSix(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage11,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
            margin: EdgeInsets.only(
              left: 7.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ronald Jason",
                      style: theme.textTheme.titleMedium,
                    ),
                    Container(
                      width: 33.h,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        top: 2.v,
                        bottom: 5.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Text(
                        "4.2",
                        style: CustomTextStyles.labelMediumOnError,
                      ),
                    ),
                  ],
                ),
                Text(
                  "High Intensity Training",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 11.v),
                Text(
                  "9 years experience",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 24.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFitnessInstructor(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.v),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage12,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Cristofer Arcand",
                      style: theme.textTheme.titleMedium,
                    ),
                    Container(
                      height: 17.v,
                      width: 33.h,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 5.v,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 16.v,
                              width: 33.h,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "4.8",
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelMediumOnError,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  width: 222.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 8.v,
                        ),
                        child: Text(
                          "High Intensity Training",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgDownPrimarycontainer,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  "7 years experience",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
