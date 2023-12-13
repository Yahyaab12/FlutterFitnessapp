import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgVideo,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                _buildPlayer(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCircleLeftOnerror,
        margin: EdgeInsets.fromLTRB(24.h, 12.v, 319.h, 12.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlayer(BuildContext context) {
    return Container(
      height: 242.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 19.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRepeat,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(top: 1.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSkipBack,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 30.h,
                      top: 1.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSkipFwd,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 124.h,
                      top: 1.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVolumeUp,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 30.h),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 123.v,
              width: 327.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPause,
                    height: 64.adaptSize,
                    width: 64.adaptSize,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "Lower Body Strength",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Container(
                          height: 10.v,
                          width: 327.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onErrorContainer,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.33,
                              backgroundColor:
                                  theme.colorScheme.onErrorContainer,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "04:35",
                                style: theme.textTheme.bodyMedium,
                              ),
                              Text(
                                "15:00",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
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
    );
  }
}
