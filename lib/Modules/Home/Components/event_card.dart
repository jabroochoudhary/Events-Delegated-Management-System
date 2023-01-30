import 'package:events_delegated_management_system/Utills/App%20Button/app_button.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventCard {
  cards({required BuildContext context}) {
    return Card(
      // color: Colors.red,
      shadowColor: AppColor.dark.withOpacity(0.5),
      elevation: 3,
      margin: EdgeInsets.only(right: AppConfig(context).width / 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: AppConfig(context).height / 2.5,
        width: AppConfig(context).width / 1.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: AppConfig(context).width / 1.7,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
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
                              Icons.favorite_outline,
                              size: 18,
                              color: AppColor.dark,
                            )),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 15,
                      child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: AppColor.backgroundColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppText.text("OCT",
                                  color: AppColor.dark, fontsize: 15),
                              AppText.text(
                                "21",
                                color: AppColor.dark,
                                fontsize: 18,
                                fontweight: FontWeight.w700,
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: AppConfig(context).width / 1.7,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
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
                          child: Icon(
                            Icons.wechat,
                            color: Get.theme.primaryColor,
                            size: 27,
                          ),

                          // decoration: BoxDecoration(
                          //     image: DecorationImage(
                          //         fit: BoxFit.fill,
                          //         image: AssetImage("assets/chat.png"))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
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
                      height: 15,
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
                            Icons.people_rounded,
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
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppConfig(context).width / 4.3,
                          child: Appbutton.primaryButton(
                            context: context,
                            title: "Accept",
                            callback: () {},
                            fontsize: 10,
                            height: 35,
                            backGroundColor: Get.theme.primaryColor,
                          ),
                        ),
                        Container(
                          width: AppConfig(context).width / 4.3,
                          child: Appbutton.deActivePrimaryButton(
                              context: context,
                              title: "Reject",
                              fontSize: 10,
                              callback: () {},
                              height: 35,
                              borderColor: Get.theme.primaryColor,
                              backGroundColor: AppColor.backgroundColor),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
