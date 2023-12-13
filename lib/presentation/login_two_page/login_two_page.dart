import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_floating_text_field.dart';
import 'package:yahya_s_application/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class LoginTwoPage extends StatefulWidget {
  const LoginTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  LoginTwoPageState createState() => LoginTwoPageState();
}

class LoginTwoPageState extends State<LoginTwoPage>
    with AutomaticKeepAliveClientMixin<LoginTwoPage> {
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnErrorContainer,
            child: Column(
              children: [
                SizedBox(height: 215.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 32.h,
                    right: 24.h,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 319.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Welcome back,\n",
                                style: CustomTextStyles
                                    .displaySmallIntegralCFWhiteA70036,
                              ),
                              TextSpan(
                                text: "Sarah",
                                style: CustomTextStyles
                                    .displaySmallIntegralCFWhiteA700,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 105.v),
                      _buildInput(context),
                      SizedBox(height: 21.v),
                      Padding(
                        padding: EdgeInsets.only(right: 8.h),
                        child: CustomFloatingTextField(
                          controller: passwordController,
                          labelText: "Password",
                          labelStyle: theme.textTheme.titleMedium!,
                          hintText: "Password",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true,
                          suffix: Container(
                            margin: EdgeInsets.symmetric(horizontal: 13.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgShow,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 59.v,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 18.h),
                          child: Text(
                            "Forgot Password",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                      SizedBox(height: 45.v),
                      _buildButtons(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailLabel(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Email",
              style: CustomTextStyles.bodySmallPrimary,
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    "Sarah145@mail.com",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Column(
        children: [
          _buildEmailLabel(context),
          SizedBox(height: 14.v),
          Divider(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            padding: EdgeInsets.all(15.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgApple,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: CustomIconButton(
              height: 54.adaptSize,
              width: 54.adaptSize,
              padding: EdgeInsets.all(15.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
              ),
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 125.h,
            text: "Login",
            rightIcon: Container(
              margin: EdgeInsets.only(left: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgChevronright,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
