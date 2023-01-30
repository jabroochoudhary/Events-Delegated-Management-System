import 'package:flutter/material.dart';

import '../../../Utills/App Button/app_button.dart';
import '../../../Utills/Theme/app_config.dart';
import '../../../Utills/Theme/app_text.dart';
import '../../../Utills/Theme/color.dart';
import 'package:get/get.dart';

class HotelComponents {
  cards(
      {required BuildContext context,
      String hotelName = "Hotel",
      String hotelLocation = "Location Dubai"}) {
    return Container(
      height: AppConfig(context).height / 4.5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          //background color of box
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          )
        ],
        // color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: AppConfig(context).height / 7,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/event_pic.png"),
              ),
              // color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Container(
            // width: AppConfig(context).width * 0.8,
            // height: AppConfig(context).height / 9,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                AppText.text(
                  color: Get.theme.primaryColor,
                  hotelName,
                  fontsize: 16,
                  fontweight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 14,
                      width: 14,
                      // decoration: const BoxDecoration(
                      //   image: DecorationImage(
                      //     image: AssetImage("assets/location.png"),
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                      child: Icon(
                        Icons.fmd_good,
                        color: Get.theme.primaryColor,
                        size: 15,
                      ),
                    ),
                    AppText.text(
                      hotelLocation,
                      fontsize: 10,
                      fontweight: FontWeight.w500,
                      color: Color(0xff929292),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
