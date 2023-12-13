import '../home_page/widgets/card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 434.v,
              width: 351.h,
              margin: EdgeInsets.only(left: 24.h),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 160.v,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: 16.h,
                              );
                            },
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return CardItemWidget();
                            },
                          ),
                        ),
                        SizedBox(height: 69.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 205.v,
                              width: 180.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage205x180,
                                    height: 205.v,
                                    width: 180.h,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 180.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16.v),
                                      decoration: AppDecoration
                                          .gradientOnPrimaryContainerToOnPrimaryContainer
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 130.v),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Warm up",
                                                  style: theme
                                                      .textTheme.titleMedium,
                                                ),
                                                SizedBox(height: 4.v),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: 11.v,
                                                      width: 2.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.v),
                                                      decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primary,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.h),
                                                      child: Text(
                                                        "01 Workout",
                                                        style: theme.textTheme
                                                            .bodyMedium,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 33.h,
                                            margin: EdgeInsets.only(top: 157.v),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 5.h,
                                              vertical: 1.v,
                                            ),
                                            decoration: AppDecoration
                                                .fillErrorContainer
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4,
                                            ),
                                            child: Text(
                                              "PRO",
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: IntrinsicWidth(
                                child: SizedBox(
                                  height: 205.v,
                                  width: 180.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage1,
                                        height: 205.v,
                                        width: 180.h,
                                        radius: BorderRadius.circular(
                                          16.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          width: 180.h,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 16.v),
                                          decoration: AppDecoration
                                              .gradientOnPrimaryContainerToOnPrimaryContainer
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder16,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 130.v),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Warm up",
                                                      style: theme.textTheme
                                                          .titleMedium,
                                                    ),
                                                    SizedBox(height: 4.v),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          height: 11.v,
                                                          width: 2.h,
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  vertical:
                                                                      2.v),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .primary,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 5.h),
                                                          child: Text(
                                                            "01 Workout",
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 33.h,
                                                margin:
                                                    EdgeInsets.only(top: 157.v),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 5.h,
                                                  vertical: 1.v,
                                                ),
                                                decoration: AppDecoration
                                                    .fillErrorContainer
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4,
                                                ),
                                                child: Text(
                                                  "PRO",
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 191.v),
                      child: Text(
                        "New Workouts",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
