import '../profile_screen/widgets/profilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_text_form_field.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController signOutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  right: 38.h,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 104.adaptSize,
                      width: 104.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 104.adaptSize,
                              width: 104.adaptSize,
                              decoration:
                                  AppDecoration.outlineOnPrimary3.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder52,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse30,
                                height: 104.adaptSize,
                                width: 104.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img5980x80,
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            radius: BorderRadius.circular(
                              40.h,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 106.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        indent: 3.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 22.h,
                        top: 37.v,
                        bottom: 30.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Joined",
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "2 month ago",
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "Sarah",
                  style: CustomTextStyles.headlineLargeBold,
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "Wegan",
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 21.v),
              SizedBox(
                height: 426.v,
                width: 327.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildPremiumLink(context),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Divider(),
                            SizedBox(height: 17.v),
                            _buildProfileList(context),
                            SizedBox(height: 180.v),
                            Divider(),
                            SizedBox(height: 20.v),
                            CustomTextFormField(
                              controller: signOutController,
                              hintText: "Sign Out",
                              hintStyle: CustomTextStyles.titleMediumRedA40001,
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
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
        imagePath: ImageConstant.imgCircleLeftOnprimary,
        margin: EdgeInsets.fromLTRB(24.h, 12.v, 319.h, 12.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildPremiumLink(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          top: 233.v,
          bottom: 110.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                top: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 37.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillRedA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Text(
                      "PRO",
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Upgrade to Premium",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "This subscription is auto-renewable",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCircleRight,
              height: 32.adaptSize,
              width: 32.adaptSize,
              margin: EdgeInsets.only(
                top: 18.v,
                bottom: 17.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 19.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return ProfilelistItemWidget();
      },
    );
  }
}
