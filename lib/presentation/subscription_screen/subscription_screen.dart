import '../subscription_screen/widgets/subscriptionlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 459.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBackground459x375,
                      height: 459.v,
                      width: 375.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 32.h,
                          bottom: 64.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Be Premium",
                              style: CustomTextStyles
                                  .headlineMediumIntegralCFWhiteA700,
                            ),
                            SizedBox(height: 12.v),
                            SizedBox(
                              width: 202.h,
                              child: Text(
                                "Get unlimited access",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .headlineSmallIntegralCFRegular25
                                    .copyWith(
                                  height: 1.20,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.v),
                            SizedBox(
                              width: 183.h,
                              child: Text(
                                "When you subscribe, you’ll get\ninstant unlimited access",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.23,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              _buildSubscriptionList(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildSubscribeNow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubscriptionList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return SubscriptionlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSubscribeNow(BuildContext context) {
    return CustomElevatedButton(
      text: "Subscribe  Now",
      margin: EdgeInsets.only(
        left: 56.h,
        right: 56.h,
        bottom: 32.v,
      ),
    );
  }
}
