// import 'dart:ffi';

// import 'package:delayed_display/delayed_display.dart';
import 'package:events_delegated_management_system/Modules/Event%20Detail/Views/event_details_view.dart';
import 'package:events_delegated_management_system/Modules/Notification/Views/notification_view.dart';
import 'package:events_delegated_management_system/Utills/bottom_filter_sheet.dart';
import 'package:events_delegated_management_system/Modules/Home/Components/event_card.dart';
import 'package:events_delegated_management_system/Utills/App%20Bar/my_app_bar.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/rendering.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isBottomSheetOpen = false;
  bool sortByDateTime = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar().appBar(
        context: context,
        searchTitle: "Destination",
        filterPressed: () => onFilterPressed(),
        notificationPressed: () => Get.to(() => NotificationView()),
      ),
      body: Container(
        color: AppColor.backgroundColor,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConfig(context).width / 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.text(
                    "Pending",
                    fontsize: 16,
                    fontweight: FontWeight.w600,
                    color: AppColor.dark,
                  ),
                  AppText.text(
                    "View All",
                    fontsize: 12,
                    fontweight: FontWeight.w400,
                    color: AppColor.dark,
                  ),
                ],
              ),
            ),
            SizedBox(height: AppConfig(context).height / 60),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(bottom: AppConfig(context).height / 60),
                child: Row(
                  children: [
                    SizedBox(
                      width: AppConfig(context).width / 20,
                    ),
                    InkWell(
                      onTap: (() => Get.to(
                            () => EventDetailsView(),
                          )),
                      child: EventCard().cards(context: context),
                    ),
                    InkWell(
                      onTap: (() => Get.to(
                            () => EventDetailsView(),
                          )),
                      child: EventCard().cards(context: context),
                    ),
                    InkWell(
                      onTap: (() => Get.to(
                            () => EventDetailsView(),
                          )),
                      child: EventCard().cards(context: context),
                    ),
                  ],
                ),
              ),
            )

// Upcomming orders
//
            ,
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConfig(context).width / 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.text(
                    "Upcoming",
                    fontsize: 16,
                    fontweight: FontWeight.w600,
                    color: AppColor.dark,
                  ),
                  AppText.text(
                    "View All",
                    fontsize: 12,
                    fontweight: FontWeight.w400,
                    color: AppColor.dark,
                  ),
                ],
              ),
            ),
            SizedBox(height: AppConfig(context).height / 60),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(bottom: AppConfig(context).height / 60),
                child: Row(
                  children: [
                    SizedBox(
                      width: AppConfig(context).width / 20,
                    ),
                    InkWell(
                      onTap: (() => Get.to(
                            () => EventDetailsView(),
                          )),
                      child: EventCard().cards(context: context),
                    ),
                    InkWell(
                      onTap: (() => Get.to(
                            () => EventDetailsView(),
                          )),
                      child: EventCard().cards(context: context),
                    ),
                    InkWell(
                      onTap: (() => Get.to(
                            () => EventDetailsView(),
                          )),
                      child: EventCard().cards(context: context),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void onFilterPressed() {
    BottomFilterSheet().filter(
      context: context,
      sortByDateTime: sortByDateTime,
      sorByAtoZSortPressed: () {
        if (sortByDateTime) {
          setState(() {
            sortByDateTime = !sortByDateTime;
          });

          Get.back();
        }
      },
      sortByDateTimePressed: () {
        if (!sortByDateTime) {
          setState(() {
            sortByDateTime = !sortByDateTime;
          });
          Get.back();
        }
      },
    );
  }
}
