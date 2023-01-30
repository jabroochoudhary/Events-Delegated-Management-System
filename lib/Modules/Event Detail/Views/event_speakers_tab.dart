import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';

class EventSpeakersTab {
  detail({required BuildContext context}) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9,
        crossAxisSpacing: 1,
        mainAxisSpacing: AppConfig(context).height * 0.04,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: AppConfig(context).height * 0.15,
              width: AppConfig(context).height * 0.15,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/companions.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AppText.text(
              "Sarah",
              fontsize: 14,
              fontweight: FontWeight.w700,
              color: AppColor.blackText,
            ),
            AppText.text(
              "Enterpreneur",
              fontsize: 12,
              fontweight: FontWeight.w500,
              color: AppColor.lightGrey800,
            ),
          ],
        );
      },
    );
  }
}
