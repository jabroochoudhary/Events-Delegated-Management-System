import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';

class NotificationComponenets {
  tile(
      {required BuildContext context,
      String title = "title",
      bool isIcon = false,
      GestureTapCallback? tilePressed}) {
    return Padding(
      padding: EdgeInsets.only(bottom: isIcon ? 0 : 10, top: isIcon ? 0 : 10),
      child: InkWell(
        onTap: tilePressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.text(
              title,
              fontsize: 15,
              fontweight: FontWeight.w400,
              color: AppColor.blackText,
            ),
            isIcon
                ? IconButton(
                    onPressed: tilePressed,
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: AppColor.blackText,
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
