import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';
import 'package:yahya_s_application/widgets/custom_icon_button.dart';
import 'package:yahya_s_application/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoPage extends StatefulWidget {
  const SignUpTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpTwoPageState createState() => SignUpTwoPageState();
}

class SignUpTwoPageState extends State<SignUpTwoPage>
    with AutomaticKeepAliveClientMixin<SignUpTwoPage> {
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
                SizedBox(height: 137.v),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Hello",
                                  style: theme.textTheme.headlineLarge,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "rookies,",
                                  style: CustomTextStyles.headlineLargeBold_1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 207.h,
                            child: Text(
                              "Enter your informations below or\nlogin with a other account",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.bodySmallIntegralCF.copyWith(
                                height: 1.60,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        _buildInputSection(context),
                        SizedBox(height: 20.v),
                        CustomTextFormField(
                          controller: passwordController,
                          hintText: "Password",
                          hintStyle: CustomTextStyles.bodySmallPrimary,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 16.v, 13.h, 19.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgHide,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 59.v,
                          ),
                          obscureText: true,
                          contentPadding: EdgeInsets.only(left: 16.h),
                        ),
                        SizedBox(height: 22.v),
                        _buildPasswordInputSection(context),
                        SizedBox(height: 79.v),
                        _buildButtonsSection(context),
                      ],
                    ),
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
  Widget _buildInputSection(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "You have entered an invalid email address!",
              style: CustomTextStyles.bodySmallRedA40001,
            ),
          ),
        ),
        SizedBox(height: 1.v),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            right: 13.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Text(
                  "Sarah145@mail",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(bottom: 4.v),
                child: IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "Sarah145@mail",
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
                                  imagePath: ImageConstant.imgCloseSquare,
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
                      ),
                      SizedBox(height: 14.v),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 14.v),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordInputSection(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "Password again",
              style: CustomTextStyles.bodySmallPrimary,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            right: 13.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPassword,
                height: 8.v,
                width: 92.h,
                margin: EdgeInsets.only(
                  top: 13.v,
                  bottom: 3.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHide,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ],
          ),
        ),
        SizedBox(height: 18.v),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildButtonsSection(BuildContext context) {
    return Row(
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
          width: 141.h,
          text: "Sign up",
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
    );
  }
}
