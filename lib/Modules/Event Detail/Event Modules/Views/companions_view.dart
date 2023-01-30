import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utills/Theme/app_config.dart';
import '../../../../Utills/Theme/app_text.dart';
import '../../../../Utills/Theme/color.dart';

class CompanionsView extends StatelessWidget {
  const CompanionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: AppConfig(context).height / 30,
            child: SizedBox(
              width: AppConfig(context).width,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                      weight: 20,
                      color: Get.theme.primaryColor,
                    ),
                  ),
                  AppText.text(
                    "Companions",
                    fontsize: 18,
                    fontweight: FontWeight.w600,
                    color: Get.theme.primaryColor,
                  ),
                  SizedBox(
                    width: AppConfig(context).width / 9,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: AppConfig(context).height * 0.87,
              width: AppConfig(context).width,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/companions.png"),
                      ),
                      shape: BoxShape.circle,
                    ),
                    height: AppConfig(context).width / 3.2,
                    width: AppConfig(context).width / 3.2,
                  ),
                  SizedBox(
                    height: AppConfig(context).height / 35,
                  ),
                  AppText.text(
                    "Nathan John",
                    fontsize: 16,
                    fontweight: FontWeight.w600,
                    color: AppColor.blackText,
                    textAlignment: TextAlign.center,
                  ),
                  SizedBox(
                    height: AppConfig(context).height * 0.015,
                  ),
                  AppText.text(
                    "Enterpreneur",
                    fontsize: 14,
                    fontweight: FontWeight.w400,
                    color: AppColor.lightGrey800,
                    textAlignment: TextAlign.center,
                  ),
                  SizedBox(
                    height: AppConfig(context).height * 0.015,
                  ),
                  SizedBox(
                    width: AppConfig(context).width * 0.80,
                    child: AppText.text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                      fontsize: 12,
                      maxlines: 18,
                      height: 1.5,
                      fontweight: FontWeight.w400,
                      color: AppColor.blackText,
                      textAlignment: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
