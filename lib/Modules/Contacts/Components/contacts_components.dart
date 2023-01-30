import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/Theme/app_text.dart';
import '../../../Utills/Theme/color.dart';

class ContactsComponents {
  card({
    required BuildContext context,
    String name = "Jabran",
    String email = "jabroochoudhary@gmail.com",
    String mobileNumber = "+923155460048",
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.backgroundColor),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Get.theme.primaryColor,
            child: Center(
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/girl.png"),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.text(
                name,
                fontsize: 14,
                fontweight: FontWeight.w700,
                color: Get.theme.primaryColor,
              ),
              AppText.text(
                mobileNumber,
                fontsize: 10,
                fontweight: FontWeight.w500,
                color: AppColor.lightGrey800,
              ),
              AppText.text(
                email,
                fontsize: 10,
                fontweight: FontWeight.w500,
                color: AppColor.lightGrey800,
              ),
            ],
          )
        ],
      ),
    );
    ;
  }
}
