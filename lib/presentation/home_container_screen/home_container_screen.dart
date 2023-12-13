import 'package:flutter/material.dart';import 'package:yahya_s_application/core/app_export.dart';import 'package:yahya_s_application/presentation/home_tab_container_page/home_tab_container_page.dart';import 'package:yahya_s_application/presentation/insight_page/insight_page.dart';import 'package:yahya_s_application/presentation/notifications_one_tab_container_page/notifications_one_tab_container_page.dart';import 'package:yahya_s_application/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {HomeContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeTabContainerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Iconlyboldhome: return AppRoutes.homeTabContainerPage; case BottomBarEnum.Insight: return AppRoutes.insightPage; case BottomBarEnum.Notification: return AppRoutes.notificationsOneTabContainerPage; case BottomBarEnum.tf: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homeTabContainerPage: return HomeTabContainerPage(); case AppRoutes.insightPage: return InsightPage(); case AppRoutes.notificationsOneTabContainerPage: return NotificationsOneTabContainerPage(); default: return DefaultWidget();} } 
 }
