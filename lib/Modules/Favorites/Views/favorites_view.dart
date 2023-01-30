import 'package:events_delegated_management_system/Modules/Favorites/Components/fav_event_card.dart';
import 'package:events_delegated_management_system/Utills/bottom_filter_sheet.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/App Bar/my_app_bar.dart';
import '../../../Utills/Theme/app_config.dart';
import '../../Home/Components/event_card.dart';

class FavoritesView extends StatefulWidget {
  FavoritesView({Key? key}) : super(key: key);

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  bool isBottomSheetOpen = false;
  bool sortByDateTime = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: MyAppBar().appBar(
          context: context,
          name: "Favourites",
          searchTitle: "Favourites",
          isOtherScreenInsteadOfHome: true,
          filterPressed: (() {
            onFilterPressed();
          })),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          // color: AppColor.redText,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              FavEventCard().cards(context: context),
              SizedBox(
                height: 20,
              ),
              FavEventCard().cards(context: context),
              SizedBox(
                height: 20,
              ),
              FavEventCard().cards(context: context),
              SizedBox(
                height: 20,
              ),
            ],
          ),
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
