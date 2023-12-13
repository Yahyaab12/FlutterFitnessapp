import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/presentation/login_page/login_page.dart';
import 'package:yahya_s_application/presentation/sign_up_page/sign_up_page.dart';

class SignUpTwoTabContainerScreen extends StatefulWidget {
  const SignUpTwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpTwoTabContainerScreenState createState() =>
      SignUpTwoTabContainerScreenState();
}

class SignUpTwoTabContainerScreenState
    extends State<SignUpTwoTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildBackground(context),
              SizedBox(
                height: 728.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    LoginPage(),
                    SignUpPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackground(BuildContext context) {
    return SizedBox(
      height: 384.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBackground384x375,
            height: 384.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Container(
            height: 25.v,
            width: 114.h,
            margin: EdgeInsets.only(
              left: 32.h,
              top: 58.v,
            ),
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.whiteA700,
              labelStyle: TextStyle(
                fontSize: 13.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelColor: appTheme.whiteA700,
              unselectedLabelStyle: TextStyle(
                fontSize: 13.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
              indicatorColor: theme.colorScheme.primary,
              tabs: [
                Tab(
                  child: Text(
                    "Login",
                  ),
                ),
                Tab(
                  child: Text(
                    "Sign up",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
