import 'package:events_delegated_management_system/Modules/Hotels/Components/hotel_components.dart';
import 'package:events_delegated_management_system/Utills/App%20Bar/my_app_bar.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';

class HotelsView extends StatefulWidget {
  HotelsView({Key? key}) : super(key: key);

  @override
  State<HotelsView> createState() => _HotelsViewState();
}

class _HotelsViewState extends State<HotelsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: MyAppBar().appBar(
        context: context,
        isOtherScreenInsteadOfHome: true,
        name: "Hotels",
        searchTitle: "Hotels",
        isFilter: false,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: 12, top: 12, left: 20, right: 20),
            child: HotelComponents().cards(
              context: context,
            ),
          );
        },
      ),
    );
  }
}
