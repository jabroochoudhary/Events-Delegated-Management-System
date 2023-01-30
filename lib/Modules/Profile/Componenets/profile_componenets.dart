import 'package:events_delegated_management_system/Utills/App%20Button/app_button.dart';
import 'package:flutter/material.dart';

import '../../../Utills/Theme/app_config.dart';
import '../../../Utills/Theme/app_text.dart';
import '../../../Utills/Theme/color.dart';
import 'package:get/get.dart';

class ProfileComponents {
  circleProfileImage(
      {required BuildContext context,
      String profileurl = "assets/companions.png"}) {
    return Positioned(
      top: AppConfig(context).height * 0.1,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.backgroundColor,
        ),
        child: Container(
          height: AppConfig(context).width / 3.5,
          width: AppConfig(context).width / 3.5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            // color: Colors.yellow,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(profileurl),
            ),
          ),
        ),
      ),
    );
  }

  topBar({
    required BuildContext context,
    GestureTapCallback? editIconPressed,
    GestureTapCallback? backIconPressed,
    String title = "Profile",
    bool isEditIcon = true,
    bool isBackIcon = false,
  }) {
    return Positioned(
      top: 0,
      child: Container(
        height: AppConfig(context).height * 0.25,
        width: AppConfig(context).width,
        color: Get.theme.primaryColor,
        padding: EdgeInsets.only(top: AppConfig(context).height / 23),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isBackIcon
                ? Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: backIconPressed,
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColor.backgroundColor,
                        size: 21,
                      ),
                    ))
                : SizedBox(
                    width: AppConfig(context).width / 15,
                  ),
            AppText.text(
              title,
              fontsize: 18,
              fontweight: FontWeight.w600,
              color: AppColor.backgroundColor,
              textAlignment: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: isEditIcon
                  ? InkWell(
                      onTap: editIconPressed,
                      child: const Icon(
                        Icons.edit_outlined,
                        color: AppColor.backgroundColor,
                        size: 21,
                      ),
                    )
                  : SizedBox(
                      width: AppConfig(context).width / 15,
                    ),
            ),
          ],
        ),
      ),
    );
  }

  tile(
      {required BuildContext context,
      bool isSuffixIcon = false,
      bool isSuffixText = false,
      String suffixTex = "ENG",
      GestureTapCallback? suffixIconPressed,
      IconData prefixIcon = Icons.mail,
      bool isprefixIcon = true,
      Widget prefixIconWidget = const SizedBox(),
      bool isPrefixIconWidget = false,
      Color titleColor = AppColor.blackText,
      IconData sufixIcon = Icons.arrow_forward_ios,
      double fontsize = 14,
      FontWeight fontWeight = FontWeight.w400,
      Color sufixIconColor = AppColor.blackText,
      double sufixIconsize = 14,
      String title = "email@gmail.com"}) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              isprefixIcon
                  ? Icon(
                      prefixIcon,
                      size: 25,
                      color: Get.theme.primaryColor,
                    )
                  : isPrefixIconWidget
                      ? Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: prefixIconWidget,
                        )
                      : SizedBox(),
              isprefixIcon
                  ? const SizedBox(
                      width: 18,
                    )
                  : SizedBox(),
              AppText.text(
                title,
                fontsize: fontsize,
                fontweight: fontWeight,
                color: titleColor,
              ),
            ],
          ),
          isSuffixIcon
              ? InkWell(
                  onTap: suffixIconPressed,
                  child: Icon(
                    sufixIcon,
                    size: sufixIconsize,
                    color: sufixIconColor,
                  ),
                )
              : isSuffixText
                  ? InkWell(
                      onTap: suffixIconPressed,
                      child: AppText.text(
                        suffixTex,
                        fontsize: 14,
                        fontweight: FontWeight.w600,
                        color: AppColor.lightGrey800,
                      ),
                    )
                  : SizedBox()
        ],
      ),
    );
  }

  logoutDialogBox(
      {required BuildContext context,
      GestureTapCallback? onYesPresses,
      GestureTapCallback? onNoPressed}) {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: AppColor.backgroundColor,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.circular(150),
                ),
                padding: EdgeInsets.all(
                  AppConfig(context).width / 11,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText.text("Are you sure you want to Logout?",
                        fontsize: 16,
                        fontweight: FontWeight.w700,
                        color: AppColor.blackText,
                        maxlines: 2),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Appbutton.primaryButton(
                          context: context,
                          title: "No",
                          callback: onNoPressed,
                          backGroundColor: AppColor.backgroundColor,
                          borderColor: Get.theme.primaryColor,
                          titleColor: Get.theme.primaryColor,
                          width: AppConfig(context).width / 5,
                          height: AppConfig(context).height / 25,
                          fontsize: 12,
                        ),
                        SizedBox(
                          width: AppConfig(context).width / 50,
                        ),
                        Appbutton.primaryButton(
                          context: context,
                          title: "Yes",
                          backGroundColor: Get.theme.primaryColor,
                          fontsize: 12,
                          callback: onYesPresses,
                          width: AppConfig(context).width / 5,
                          height: AppConfig(context).height / 25,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ));
  }

  changeLanguageBottomSheet({
    required BuildContext context,
    bool isEnglishLanguage = true,
  }) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) => Container(
        width: AppConfig(context).width,
        height: AppConfig(context).height * 0.30,
        padding: EdgeInsets.symmetric(
            horizontal: AppConfig(context).width / 8, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: AppConfig(context).height / 30,
            ),
            AppText.text(
              "Change Language",
              fontsize: 16,
              fontweight: FontWeight.w600,
              color: Get.theme.primaryColor,
            ),
            SizedBox(
              height: AppConfig(context).height / 25,
            ),
            tile(
              context: context,
              isprefixIcon: false,
              title: "Arabic",
              fontWeight: FontWeight.w600,
              fontsize: 16,
              sufixIconsize: 20,
              sufixIconColor: Get.theme.primaryColor,
              titleColor: isEnglishLanguage
                  ? AppColor.lightGrey800
                  : Get.theme.primaryColor,
              isSuffixIcon: !isEnglishLanguage,
              sufixIcon: Icons.check,
            ),
            Divider(
              thickness: 0.9,
            ),
            tile(
              context: context,
              isprefixIcon: false,
              title: "English",
              fontWeight: FontWeight.w600,
              fontsize: 16,
              sufixIconsize: 20,
              sufixIconColor: Get.theme.primaryColor,
              titleColor: isEnglishLanguage
                  ? Get.theme.primaryColor
                  : AppColor.lightGrey800,
              isSuffixIcon: isEnglishLanguage,
              sufixIcon: Icons.check,
            ),
          ],
        ),
      ),
    );
  }

  changeColorBottomSheet({
    required BuildContext context,
    bool isGolden = false,
    bool isRed = false,
    bool isBlue = false,
    bool isgreen = false,
    GestureTapCallback? goldPressed,
    GestureTapCallback? redPressed,
    GestureTapCallback? bluePressed,
    GestureTapCallback? greenPressed,
  }) {
    double dividerThocness = 0.9;

    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) => Container(
        width: AppConfig(context).width,
        height: AppConfig(context).height * 0.40,
        padding: EdgeInsets.symmetric(
            horizontal: AppConfig(context).width / 8, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: AppConfig(context).height / 30,
            ),
            AppText.text(
              "Change Color",
              fontsize: 16,
              fontweight: FontWeight.w600,
              color: Get.theme.primaryColor,
            ),
            SizedBox(
              height: AppConfig(context).height / 25,
            ),
            InkWell(
              onTap: goldPressed,
              child: tile(
                context: context,
                isprefixIcon: false,
                isPrefixIconWidget: true,
                prefixIconWidget: const CircleAvatar(
                  radius: 9,
                  backgroundColor: Color(0xffB68D5C),
                ),
                title: "Golden",
                fontWeight: FontWeight.w600,
                fontsize: 16,
                sufixIconsize: 20,
                sufixIconColor: Color(0xffB68D5C),
                titleColor: Color(0xffB68D5C),
                isSuffixIcon: isGolden,
                sufixIcon: Icons.check,
              ),
            ),
            Divider(
              thickness: dividerThocness,
            ),
            InkWell(
              onTap: redPressed,
              child: tile(
                context: context,
                isprefixIcon: false,
                title: "Red",
                fontWeight: FontWeight.w600,
                fontsize: 16,
                sufixIconsize: 20,
                sufixIconColor: Colors.red,
                titleColor: Colors.red,
                isSuffixIcon: isRed,
                sufixIcon: Icons.check,
                isPrefixIconWidget: true,
                prefixIconWidget: const CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.red,
                ),
              ),
            ),
            Divider(
              thickness: dividerThocness,
            ),
            InkWell(
              onTap: bluePressed,
              child: tile(
                context: context,
                isprefixIcon: false,
                title: "Blue",
                fontWeight: FontWeight.w600,
                fontsize: 16,
                sufixIconsize: 20,
                sufixIconColor: Colors.blue,
                titleColor: Colors.blue,
                isSuffixIcon: isBlue,
                sufixIcon: Icons.check,
                isPrefixIconWidget: true,
                prefixIconWidget: const CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
            Divider(
              thickness: dividerThocness,
            ),
            InkWell(
              onTap: greenPressed,
              child: tile(
                context: context,
                isprefixIcon: false,
                title: "Green",
                fontWeight: FontWeight.w600,
                fontsize: 16,
                sufixIconsize: 20,
                sufixIconColor: Colors.green,
                titleColor: Colors.green,
                isSuffixIcon: isgreen,
                sufixIcon: Icons.check,
                isPrefixIconWidget: true,
                prefixIconWidget: const CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
