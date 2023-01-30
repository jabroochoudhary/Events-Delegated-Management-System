import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Theme/app_text.dart';
import 'Theme/color.dart';

class AppNotification {
  sucess({required String title, required String message}) {
    return Get.snackbar(title, message,
        backgroundColor: AppColor.backgroundColor,
        borderRadius: 20,
        colorText: Get.theme.primaryColor,
        titleText: AppText.text(
          title,
          color: Get.theme.primaryColor,
          fontsize: 18,
          fontweight: FontWeight.w500,
          textAlignment: TextAlign.start,
        ),
        messageText: AppText.text(
          message,
          color: Get.theme.primaryColor,
          fontsize: 15,
          fontweight: FontWeight.w400,
          textAlignment: TextAlign.start,
          maxlines: 2,
        ));
  }

  error({required String title, required String message}) {
    return Get.snackbar(title, message,
        backgroundColor: Color.fromARGB(255, 251, 73, 60),
        borderRadius: 20,
        colorText: Get.theme.primaryColor,
        titleText: AppText.text(
          title,
          color: AppColor.backgroundColor,
          fontsize: 18,
          fontweight: FontWeight.w500,
          textAlignment: TextAlign.start,
        ),
        messageText: AppText.text(
          message,
          color: AppColor.backgroundColor,
          fontsize: 15,
          fontweight: FontWeight.w400,
          textAlignment: TextAlign.start,
          maxlines: 2,
        ));
  }

  hint({required String title, required String message}) {
    return Get.snackbar(title, message,
        backgroundColor: Color.fromARGB(255, 176, 176, 176),
        borderRadius: 20,
        colorText: Get.theme.primaryColor,
        titleText: AppText.text(
          title,
          color: AppColor.backgroundColor,
          fontsize: 18,
          fontweight: FontWeight.w500,
          textAlignment: TextAlign.start,
        ),
        messageText: AppText.text(
          message,
          color: AppColor.backgroundColor,
          fontsize: 15,
          fontweight: FontWeight.w400,
          textAlignment: TextAlign.start,
          maxlines: 2,
        ));
  }
}
