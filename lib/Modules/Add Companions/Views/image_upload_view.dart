import 'package:events_delegated_management_system/Modules/Add%20Companions/Componenets/camera_gallery_bottom_sheet.dart';
import 'package:events_delegated_management_system/Utills/App%20Button/app_button.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/Theme/app_config.dart';
import '../../Profile/Componenets/profile_componenets.dart';

class ImageUploadView extends StatelessWidget {
  const ImageUploadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ProfileComponents().topBar(
          context: context,
          title: "Add Companions",
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
              top: AppConfig(context).height / 15,
              // left: AppConfig(context).width / 12,
              // right: AppConfig(context).width / 12,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: AppColor.backgroundColor,
            ),
            child: Column(
              children: [
                Container(
                  width: AppConfig(context).width * 0.87,
                  height: AppConfig(context).width * 0.87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.lightGrey600,
                  ),
                  child: Center(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image_logo.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppConfig(context).height / 20,
                ),
                Appbutton.primaryButton(
                  context: context,
                  title: "Upload Image",
                  width: AppConfig(context).width * 0.87,
                  height: 60,
                  backGroundColor: Get.theme.primaryColor,
                  callback: () => CameraGallaryBottomsheet().sheet(
                    context: context,
                    gallaryPressed: () {},
                    cameraPressed: () {},
                    cancelPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
