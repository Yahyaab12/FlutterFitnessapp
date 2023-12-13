import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/presentation/notifications_one_page/notifications_one_page.dart';

// ignore_for_file: must_be_immutable
class NotificationsOneTabContainerPage extends StatefulWidget {
  const NotificationsOneTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsOneTabContainerPageState createState() =>
      NotificationsOneTabContainerPageState();
}

class NotificationsOneTabContainerPageState
    extends State<NotificationsOneTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 59.v),
              Text(
                "Notifications",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 33.v),
              _buildTabview(context),
              SizedBox(
                height: 575.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    NotificationsOnePage(),
                    NotificationsOnePage(),
                    NotificationsOnePage(),
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 28.v,
      width: 327.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(
          14.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onError.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            14.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "New",
            ),
          ),
          Tab(
            child: Text(
              "Events",
            ),
          ),
          Tab(
            child: Text(
              "All",
            ),
          ),
        ],
      ),
    );
  }
}
