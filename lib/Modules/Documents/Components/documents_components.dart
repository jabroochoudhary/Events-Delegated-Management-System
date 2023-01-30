import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DocumentsComponenets {
  card({required BuildContext context, String docname = "ACB.pdf"}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.backgroundColor),
      height: 90,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Get.theme.primaryColor,
              child: const Center(
                child: Image(
                  image: AssetImage("assets/pdf_logo.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            AppText.text(
              "ACB.pdf",
              fontsize: 14,
              fontweight: FontWeight.w700,
              color: Get.theme.primaryColor,
            ),
          ],
        ),
        // Image(image: AssetImage("assets/download_pdf_icon.png"))
        Icon(
          Icons.save_alt,
          color: Get.theme.primaryColor,
          size: 30,
        ),
      ]),
    );
  }
}
