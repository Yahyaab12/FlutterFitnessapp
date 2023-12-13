import '../workout_categories_page/widgets/cardcomponentlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WorkoutCategoriesPage extends StatefulWidget {
  const WorkoutCategoriesPage({Key? key})
      : super(
          key: key,
        );

  @override
  WorkoutCategoriesPageState createState() => WorkoutCategoriesPageState();
}

class WorkoutCategoriesPageState extends State<WorkoutCategoriesPage>
    with AutomaticKeepAliveClientMixin<WorkoutCategoriesPage> {
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
              _buildCardComponentList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardComponentList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
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
            return CardcomponentlistItemWidget();
          },
        ),
      ),
    );
  }
}
