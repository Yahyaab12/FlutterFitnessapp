import '../pro_profile_screen/widgets/profilelist1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_text_form_field.dart';

class ProProfileScreen extends StatelessWidget {
  ProProfileScreen({Key? key})
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
            horizontal: 32.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [
              _buildTitle(context),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sarah",
                  style: CustomTextStyles.headlineLargeBold,
                ),
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Wegan",
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 22.v),
              Divider(),
              SizedBox(height: 17.v),
              _buildProfileList(context),
              Spacer(),
              Divider(),
              SizedBox(height: 20.v),
              CustomTextFormField(
                controller: signOutController,
                hintText: "Sign Out",
                hintStyle: CustomTextStyles.titleMediumRedA40001,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 23.v),
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
  Widget _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 104.v,
          width: 113.h,
          margin: EdgeInsets.only(bottom: 3.v),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 104.adaptSize,
                  width: 104.adaptSize,
                  decoration: AppDecoration.outlineOnPrimary3.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder52,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEllipse30RedA40001,
                    height: 104.adaptSize,
                    width: 104.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 4.v),
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  decoration: AppDecoration.fillRedA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "PRO",
                    style: theme.textTheme.labelMedium,
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
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 12.h),
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
            top: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Joined",
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 2.v),
              Text(
                "2 mon ago",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 11.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pro Member",
                    style: CustomTextStyles.bodySmallRedA40001,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "Until 18 Jul 2022",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "12 Months Subscription",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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
        return Profilelist1ItemWidget();
      },
    );
  }
}
