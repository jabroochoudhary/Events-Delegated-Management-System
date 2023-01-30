import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/Theme/app_config.dart';
import '../../../Utills/Theme/app_text.dart';
import '../../../Utills/Theme/color.dart';

class CameraGallaryBottomsheet {
  sheet({
    required BuildContext context,
    GestureTapCallback? cameraPressed,
    GestureTapCallback? gallaryPressed,
    GestureTapCallback? cancelPressed,
  }) {
    return showModalBottomSheet(
      backgroundColor: AppColor.transparent,
      context: context,
      builder: (context) => Container(
        height: AppConfig(context).height * 0.30,
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: AppColor.transparent,
        width: AppConfig(context).width,
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: AppConfig(context).width * 0.95,
                height: AppConfig(context).width * 0.15,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: AppColor.backgroundColor,
                ),
                child: Center(
                  child: AppText.text(
                    "Photo Gallery",
                    fontsize: 18,
                    fontweight: FontWeight.w400,
                    color: Get.theme.primaryColor,
                  ),
                ),
              ),
            ),
            Container(
              height: 1,
              width: AppConfig(context).width * 0.95,
              color: AppColor.lightGrey700,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: AppConfig(context).width * 0.95,
                height: AppConfig(context).width * 0.15,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: AppColor.backgroundColor,
                ),
                child: Center(
                  child: AppText.text(
                    "Camera",
                    fontsize: 18,
                    fontweight: FontWeight.w400,
                    color: Get.theme.primaryColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: AppConfig(context).width * 0.95,
                height: AppConfig(context).width * 0.15,
                decoration: BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: AppText.text(
                    "Cancel",
                    fontsize: 18,
                    fontweight: FontWeight.w700,
                    color: Get.theme.primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
