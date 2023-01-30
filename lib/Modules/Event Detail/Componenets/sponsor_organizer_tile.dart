import 'package:flutter/material.dart';

import '../../../Utills/Theme/app_config.dart';
import '../../../Utills/Theme/app_text.dart';
import '../../../Utills/Theme/color.dart';

class SaponsorOrganizerTile {
  tile(
      {required BuildContext context,
      String title = "title",
      String subtitle = "subtitile",
      String desc = "description",
      String imageurl = "organizers_logo.png"}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: AppConfig(context).width / 7,
                    width: AppConfig(context).width / 7,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/${imageurl.toString()}")),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.text(
                        title,
                        fontsize: 14,
                        fontweight: FontWeight.w700,
                        color: AppColor.blackText,
                      ),
                      AppText.text(
                        subtitle,
                        fontsize: 12,
                        fontweight: FontWeight.w500,
                        color: AppColor.lightGrey800,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: AppConfig(context).width * 0.80,
                child: AppText.text(
                  desc,
                  fontsize: 12,
                  maxlines: 2,
                  textAlignment: TextAlign.start,
                  fontweight: FontWeight.w500,
                  color: AppColor.lightGrey800,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
