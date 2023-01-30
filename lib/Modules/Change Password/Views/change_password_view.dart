import 'package:events_delegated_management_system/Utills/Text%20Field/textfeilds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/App Button/app_button.dart';
import '../../../Utills/Theme/app_config.dart';
import '../../../Utills/Theme/app_text.dart';
import '../../../Utills/Theme/color.dart';
import '../../Profile/Componenets/profile_componenets.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hight = AppConfig(context).height;
    final width = AppConfig(context).width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          ProfileComponents().topBar(
            context: context,
            title: "Change Password",
            isBackIcon: true,
            isEditIcon: false,
            backIconPressed: () => Get.back(),
          ),
          Positioned(
            top: AppConfig(context).height * 0.10,
            child: Container(
              height: AppConfig(context).height * 0.90,
              width: AppConfig(context).width,
              padding: EdgeInsets.only(
                  top: AppConfig(context).height / 40,
                  left: AppConfig(context).width / 12,
                  right: AppConfig(context).width / 12),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: AppColor.backgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: hight * 0.03),
                  AppTextFormFiledWithOutLabel(
                    // isLabel: true,
                    keyboardtype: TextInputType.emailAddress,
                    text: "Current Password",
                    isPassword: true,
                    fontweight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: hight * 0.05,
                  ),
                  AppTextFormFiledWithOutLabel(
                    // isLabel: true,
                    keyboardtype: TextInputType.emailAddress,
                    text: "New Password",
                    isPassword: true,
                    fontweight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: hight * 0.05,
                  ),
                  AppTextFormFiledWithOutLabel(
                    // isLabel: true,
                    keyboardtype: TextInputType.emailAddress,
                    text: "Re-type New Password",
                    isPassword: true,
                    fontweight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: hight * 0.1,
                  ),
                  Appbutton.primaryButton(
                      context: context,
                      title: "Change Password",
                      backGroundColor: Get.theme.primaryColor,
                      callback: () {})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
