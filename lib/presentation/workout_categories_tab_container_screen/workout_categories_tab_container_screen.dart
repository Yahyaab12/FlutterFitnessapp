import 'package:flutter/material.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/presentation/home_tab_container_page/home_tab_container_page.dart';
import 'package:yahya_s_application/presentation/insight_page/insight_page.dart';
import 'package:yahya_s_application/presentation/notifications_one_tab_container_page/notifications_one_tab_container_page.dart';
import 'package:yahya_s_application/presentation/workout_categories_page/workout_categories_page.dart';
import 'package:yahya_s_application/widgets/custom_bottom_bar.dart';

class WorkoutCategoriesTabContainerScreen extends StatefulWidget {
  const WorkoutCategoriesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WorkoutCategoriesTabContainerScreenState createState() =>
      WorkoutCategoriesTabContainerScreenState();
}

class WorkoutCategoriesTabContainerScreenState
    extends State<WorkoutCategoriesTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 60.v),
              Text(
                "Workout Categories",
                style: CustomTextStyles.titleLargeOpenSansSemiBold,
              ),
              SizedBox(height: 28.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 575.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      WorkoutCategoriesPage(),
                      WorkoutCategoriesPage(),
                      WorkoutCategoriesPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
              "Beginner",
            ),
          ),
          Tab(
            child: Text(
              "Intermediate",
            ),
          ),
          Tab(
            child: Text(
              "Advance",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconlyboldhome:
        return AppRoutes.homeTabContainerPage;
      case BottomBarEnum.Insight:
        return AppRoutes.insightPage;
      case BottomBarEnum.Notification:
        return AppRoutes.notificationsOneTabContainerPage;
      case BottomBarEnum.tf:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeTabContainerPage:
        return HomeTabContainerPage();
      case AppRoutes.insightPage:
        return InsightPage();
      case AppRoutes.notificationsOneTabContainerPage:
        return NotificationsOneTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
