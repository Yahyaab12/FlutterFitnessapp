import '../appointment_screen/widgets/time_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:yahya_s_application/core/app_export.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yahya_s_application/widgets/app_bar/appbar_title.dart';
import 'package:yahya_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:yahya_s_application/widgets/custom_elevated_button.dart';

class AppointmentScreen extends StatelessWidget {
  AppointmentScreen({Key? key})
      : super(
          key: key,
        );

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime focusedDay = DateTime.now();

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              _buildTrainerCard(context),
              SizedBox(height: 16.v),
              _buildDatePicker(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCircleLeftOnprimary,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Appointment",
      ),
    );
  }

  /// Section Widget
  Widget _buildTrainerCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 136.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Emily Kevin",
                        style: theme.textTheme.titleMedium,
                      ),
                      Container(
                        width: 33.h,
                        margin: EdgeInsets.only(bottom: 6.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Text(
                          "4.9",
                          style: CustomTextStyles.labelMediumOnError,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "High Intensity Training",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
                SizedBox(height: 11.v),
                Text(
                  "2 years experience",
                  style: CustomTextStyles.bodySmallPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Time",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 13.v),
          Wrap(
            runSpacing: 21.v,
            spacing: 21.h,
            children: List<Widget>.generate(3, (index) => TimeItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDatePicker(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 262.v,
            width: 295.h,
            child: TableCalendar(
              locale: 'en_US',
              firstDay: DateTime(DateTime.now().year - 5),
              lastDay: DateTime(DateTime.now().year + 5),
              calendarFormat: CalendarFormat.month,
              rangeSelectionMode: rangeSelectionMode,
              startingDayOfWeek: StartingDayOfWeek.monday,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                isTodayHighlighted: true,
                todayTextStyle: TextStyle(
                  color: appTheme.whiteA700,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                ),
                todayDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                  border: Border.all(
                    color: theme.colorScheme.primaryContainer,
                    width: 1.h,
                  ),
                ),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  color: appTheme.whiteA700,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              headerVisible: false,
              rowHeight: 32.adaptSize,
              focusedDay: focusedDay,
              rangeStartDay: rangeStart,
              rangeEndDay: rangeEnd,
              onDaySelected: (selectedDay, focusedDay) {},
              onRangeSelected: (start, end, focusedDay) {},
              onPageChanged: (focusedDay) {},
            ),
          ),
          SizedBox(height: 22.v),
          _buildTimeColumn(context),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Next",
      margin: EdgeInsets.only(
        left: 56.h,
        right: 56.h,
        bottom: 32.v,
      ),
    );
  }
}
