import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationsOnePage extends StatefulWidget {
  const NotificationsOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsOnePageState createState() => NotificationsOnePageState();
}

class NotificationsOnePageState extends State<NotificationsOnePage>
    with AutomaticKeepAliveClientMixin<NotificationsOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildNotificationSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationSection(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: appTheme.gray800,
          indent: 24.h,
          endIndent: 24.h,
        ),
        SizedBox(height: 15.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 31.h,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 8.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "Congratulations",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 144.h,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "9:45 AM",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "35% your daily challenge completed",
                    style: CustomTextStyles.bodyMedium15,
                  ),
                ),
                SizedBox(height: 14.v),
                Divider(
                  color: appTheme.gray800,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 14.v),
        SizedBox(
          height: 165.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Attention",
                                style: theme.textTheme.titleSmall,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 208.h),
                                child: Text(
                                  "9:38 AM",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.v),
                          SizedBox(
                            width: 246.h,
                            child: Text(
                              "Your subscription is going to expire\nvery soon. Subscribe now.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMedium15.copyWith(
                                height: 1.40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14.v),
                      Divider(
                        color: appTheme.gray800,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Daily Activity",
                                      style: theme.textTheme.titleSmall,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Text(
                                        "8:25 AM",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "Time for your workout session ",
                                  style: CustomTextStyles.bodyMedium15,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 79.v,
                            width: 64.h,
                            margin: EdgeInsets.only(left: 16.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.h,
                              vertical: 27.v,
                            ),
                            decoration: AppDecoration.fillRedA,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgDelete,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: appTheme.gray800,
                      endIndent: 64.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
