import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/App Bar/my_app_bar.dart';
import '../../../Utills/bottom_filter_sheet.dart';
import '../../Favorites/Components/fav_event_card.dart';

class ArchivesView extends StatefulWidget {
  const ArchivesView({Key? key}) : super(key: key);

  @override
  State<ArchivesView> createState() => _ArchivesViewState();
}

class _ArchivesViewState extends State<ArchivesView> {
  bool isBottomSheetOpen = false;

  bool sortByDateTime = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: MyAppBar().appBar(
        context: context,
        isOtherScreenInsteadOfHome: true,
        name: "Archives",
        filterPressed: () => onFilterPressed(),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                FavEventCard().cards(context: context),
              ],
            ),
          );
        },
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
