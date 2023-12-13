import '../payment_screen/widgets/addcard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_text_form_field.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController vectorOneController = TextEditingController();

  TextEditingController vectorTwoController = TextEditingController();

  TextEditingController vectorThreeController = TextEditingController();

  TextEditingController vectorFourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 21.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "Payment Method",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 11.v),
              _buildAddCard(context),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "Order Details",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 13.v),
              _buildVectorOne(context),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "Trainer",
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage40x40,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 127.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Emily Kevin",
                                  style: theme.textTheme.titleSmall,
                                ),
                                Container(
                                  height: 13.v,
                                  width: 27.h,
                                  margin: EdgeInsets.only(bottom: 5.v),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgPoint,
                                        height: 13.v,
                                        width: 27.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text(
                                            "4.9",
                                            style: theme.textTheme.labelSmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "High Intensity Training",
                            style: CustomTextStyles.bodySmallPrimary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              _buildVectorTwo(context),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "Date",
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "20 October 2021 - Wednesday",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "Time",
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 28.h),
                child: Text(
                  "09:30 AM",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 13.v),
              _buildVectorThree(context),
              SizedBox(height: 14.v),
              _buildCost(context),
              SizedBox(height: 13.v),
              _buildVectorFour(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirm(context),
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
        text: "Payment",
      ),
    );
  }

  /// Section Widget
  Widget _buildAddCard(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 115.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return AddcardItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: CustomTextFormField(
        controller: vectorOneController,
        alignment: Alignment.center,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray800,
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: CustomTextFormField(
        controller: vectorTwoController,
        alignment: Alignment.center,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray800,
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: CustomTextFormField(
        controller: vectorThreeController,
        alignment: Alignment.center,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray800,
      ),
    );
  }

  /// Section Widget
  Widget _buildCost(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                bottom: 2.v,
              ),
              child: Text(
                "Estimated Cost",
                style: theme.textTheme.bodySmall,
              ),
            ),
            Text(
              " 175.99",
              style: theme.textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: CustomTextFormField(
        controller: vectorFourController,
        textInputAction: TextInputAction.done,
        alignment: Alignment.center,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray800,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      text: "Confirm",
      margin: EdgeInsets.only(
        left: 56.h,
        right: 56.h,
        bottom: 32.v,
      ),
    );
  }
}
