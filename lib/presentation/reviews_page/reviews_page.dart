import '../reviews_page/widgets/reviewcardlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ReviewsPageState createState() => ReviewsPageState();
}

class ReviewsPageState extends State<ReviewsPage>
    with AutomaticKeepAliveClientMixin<ReviewsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    children: [
                      _buildRatingGraphic(context),
                      SizedBox(height: 30.v),
                      SizedBox(
                        height: 672.v,
                        width: 374.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            _buildReviewCardList(context),
                            _buildWriteAReviewButton(context),
                          ],
                        ),
                      ),
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
  Widget _buildRatingGraphic(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 14.v),
            child: Text(
              "4.6",
              style: CustomTextStyles.displayMediumSemiBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.v),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "5",
                            style: CustomTextStyles.openSansWhiteA700,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 17.v,
                            width: 5.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "4",
                                    style: CustomTextStyles.openSansWhiteA700,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "3",
                                    style: CustomTextStyles.openSansWhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "2",
                            style: CustomTextStyles.openSansWhiteA700,
                          ),
                        ),
                        Text(
                          "1",
                          style: CustomTextStyles.openSansWhiteA700,
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLines,
                      height: 39.v,
                      width: 193.h,
                      margin: EdgeInsets.only(
                        left: 6.h,
                        top: 3.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "174 Ratings",
                    style: theme.textTheme.bodyMedium,
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
  Widget _buildReviewCardList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return ReviewcardlistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteAReviewButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 138.v),
        padding: EdgeInsets.symmetric(
          horizontal: 55.h,
          vertical: 32.v,
        ),
        decoration:
            AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 75.v),
            CustomElevatedButton(
              text: "Write a Review",
            ),
          ],
        ),
      ),
    );
  }
}
