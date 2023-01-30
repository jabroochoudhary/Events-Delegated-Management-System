import 'package:events_delegated_management_system/Utills/App%20Button/app_button.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavEventCard {
  cards({required BuildContext context}) {
    return Container(
      height: AppConfig(context).height / 4.1,
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
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: AppColor.backgroundColor,
                    radius: 15,
                    child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite,
                          size: 18,
                          color: Colors.red,
                        )),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 15,
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor.backgroundColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText.text("OCT",
                              color: AppColor.dark, fontsize: 14),
                          AppText.text(
                            "21",
                            color: AppColor.dark,
                            fontsize: 16,
                            fontweight: FontWeight.w700,
                          ),
                        ],
                      )),
                ),
                Positioned(
                    right: 15,
                    bottom: 15,
                    child: Container(
                      width: 79,
                      child: Appbutton.primaryButton(
                        backGroundColor: Get.theme.primaryColor,
                        borderColor: Get.theme.primaryColor,
                        context: context,
                        title: "Atending",
                        callback: () {},
                        fontsize: 8,
                        height: 18,
                      ),
                    )),
              ],
            ),
          ),
          Container(
            // width: AppConfig(context).width * 0.8,
            padding: EdgeInsets.symmetric(
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
              children: [
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.text(
                      "Adana Event",
                      fontsize: 16,
                      fontweight: FontWeight.w700,
                      color: Get.theme.primaryColor,
                    ),
                    Container(
                      width: 27,
                      height: 27,
                      // decoration: const BoxDecoration(
                      //     image: DecorationImage(
                      //         fit: BoxFit.fill,
                      //         image: AssetImage("assets/chat.png"))),
                      child: Icon(
                        Icons.wechat,
                        color: Get.theme.primaryColor,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
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
                      "Dubai MOI, Dubai",
                      fontsize: 10,
                      fontweight: FontWeight.w500,
                      color: Color(0xff929292),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 14,
                      width: 14,
                      // decoration: const BoxDecoration(
                      //   image: DecorationImage(
                      //     image: AssetImage("assets/people.png"),
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                      child: Icon(
                        Icons.group,
                        color: Get.theme.primaryColor,
                        size: 15,
                      ),
                    ),
                    Stack(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Padding(
                            padding: EdgeInsets.only(left: index * 20),
                            child: Container(
                              // color: AppColor.dark,
                              height: 23,
                              width: 23,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/girl.png"),
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: index == 4
                                        ? AppColor.dark.withOpacity(0.5)
                                        : Colors.transparent,
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: index == 4
                                      ? AppText.text("+25",
                                          color: AppColor.backgroundColor,
                                          fontsize: 7,
                                          fontweight: FontWeight.w500,
                                          maxlines: 2)
                                      : SizedBox(),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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
