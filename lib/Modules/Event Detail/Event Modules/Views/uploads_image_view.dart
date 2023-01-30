import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utills/Theme/app_text.dart';
import '../../../../Utills/Theme/color.dart';

class UploadsImageView extends StatelessWidget {
  const UploadsImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: AppConfig(context).height,
        width: AppConfig(context).width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: AppConfig(context).height,
                width: AppConfig(context).width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/event_larg.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: AppConfig(context).width / 15,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: AppConfig(context).width,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        weight: 20,
                        color: AppColor.backgroundColor,
                      ),
                    ),
                    AppText.text(
                      "Uploads",
                      fontsize: 18,
                      fontweight: FontWeight.w600,
                      color: AppColor.backgroundColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: (() {
                          showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              context: context,
                              builder: ((context) => Container(
                                    height: AppConfig(context).height / 9,
                                    width: AppConfig(context).width,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                      color: AppColor.backgroundColor,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: AppConfig(context).width / 12,
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                              radius: 15,
                                              backgroundColor:
                                                  AppColor.blackText,
                                              child: Icon(
                                                Icons.download,
                                                size: 18,
                                                color: AppColor.backgroundColor,
                                              )),
                                          const SizedBox(
                                            width: 25,
                                          ),
                                          AppText.text("Save to Device",
                                              fontsize: 16,
                                              fontweight: FontWeight.w500,
                                              color: AppColor.blackText)
                                        ],
                                      ),
                                    ),
                                  )));
                        }),
                        child: const Icon(
                          Icons.more_vert,
                          size: 23,
                          weight: 20,
                          color: AppColor.backgroundColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
