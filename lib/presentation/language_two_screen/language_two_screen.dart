import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_search_view.dart';

class LanguageTwoScreen extends StatelessWidget {
  LanguageTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.h),
              child: Column(
                children: [
                  _buildSearchRow(context),
                  SizedBox(height: 32.v),
                  Divider(),
                  SizedBox(height: 17.v),
                  _buildProfileList1(context),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildProfileList2(context),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildProfileList2(context),
                  ),
                  SizedBox(height: 20.v),
                  _buildProfileList4(context),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildProfileList2(context),
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildProfileList2(context),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildProfileList2(context),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildProfileList2(context),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildProfileList2(context),
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildProfileList2(context),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildProfileList2(context),
                  ),
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
        text: "Language",
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomSearchView(
            controller: searchController,
            hintText: "En|",
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 9.v,
            ),
          ),
        ),
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 8.v,
            bottom: 8.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCloseSquareWhiteA700,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPathWhiteA700,
                height: 6.adaptSize,
                width: 6.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfileList1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Text(
                  "English",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(
                height: 24.adaptSize,
                width: 24.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTickSquarePrimary,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPath,
                      height: 6.v,
                      width: 8.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Divider(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileList4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Japanese",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 19.v),
        Divider(),
      ],
    );
  }

  /// Common widget
  Widget _buildProfileList2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Chinese",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 21.v),
        Divider(),
      ],
    );
  }
}
