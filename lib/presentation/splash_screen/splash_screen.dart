import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 49.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 51.v),
              CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 116.v,
                width: 117.h,
              ),
              SizedBox(height: 33.v),
              SizedBox(
                width: 275.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Dev\n",
                        style: CustomTextStyles.integralCFPrimary,
                      ),
                      TextSpan(
                        text: "Muscles",
                        style: CustomTextStyles.displayMediumIntegralCFPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
