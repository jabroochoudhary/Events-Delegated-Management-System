import 'package:events_delegated_management_system/Modules/Add%20Companions/Views/image_upload_view.dart';
import 'package:events_delegated_management_system/Utills/App%20Button/app_button.dart';
import 'package:events_delegated_management_system/Utills/Text%20Field/textfeilds.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Profile/Componenets/profile_componenets.dart';

class AddCompanionsView extends StatelessWidget {
  const AddCompanionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Column(
              children: [
                Container(
                  height: AppConfig(context).height * 0.22,
                  width: AppConfig(context).width,
                  decoration: BoxDecoration(
                    color: Get.theme.primaryColor,
                    // shape: ,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          AppConfig(context).width * 1.5, 120.0),
                    ),
                  ),
                ),
                Container(
                  height: AppConfig(context).height * 0.78,
                  width: AppConfig(context).width,
                  color: AppColor.backgroundColor,
                  padding: EdgeInsets.only(
                      left: 30, right: 30, top: AppConfig(context).height / 13),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AppTextFormFiledWithLabel(
                          text: "First name",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppTextFormFiledWithLabel(
                          text: "Last name",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppTextFormFiledWithLabel(
                          text: "Email",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppTextFormFiledWithLabel(
                          text: "Contact Numbers",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppTextFormFiledWithLabel(
                          text: "Companion Type",
                        ),
                        SizedBox(
                          height: AppConfig(context).height / 15,
                        ),
                        Appbutton.primaryButton(
                            context: context,
                            title: "Save",
                            height: 60,
                            backGroundColor: Get.theme.primaryColor,
                            width: AppConfig(context).width * 0.80,
                            callback: () {}),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: AppConfig(context).height * 0.13,
            child: Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                color: AppColor.backgroundColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.lightGrey700,
                    blurRadius: 1.0,
                    spreadRadius: 0.1,
                    offset: Offset(0, 0), // shadow direction: bottom right
                  )
                ],
              ),
              child: Stack(
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage("assets/profile_logo.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () => Get.to(() => ImageUploadView()),
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Get.theme.primaryColor,
                          child: Icon(
                            Icons.photo_camera_sharp,
                            size: 20,
                            color: AppColor.backgroundColor,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: AppConfig(context).height / 22,
            width: AppConfig(context).width,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: AppColor.backgroundColor,
                    ),
                  ),
                  AppText.text(
                    "Add Companions",
                    color: AppColor.backgroundColor,
                    fontsize: 18,
                    fontweight: FontWeight.w600,
                  ),
                  SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
