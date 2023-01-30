import 'package:events_delegated_management_system/Modules/Notification/Componenets/notification_componenets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/Theme/app_config.dart';
import '../../../Utills/Theme/color.dart';
import '../../Profile/Componenets/profile_componenets.dart';

class NotificationView extends StatelessWidget {
  NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          ProfileComponents().topBar(
            context: context,
            title: "Notifications",
            isBackIcon: true,
            isEditIcon: false,
            backIconPressed: () => Get.back(),
          ),
          Positioned(
            bottom: 0,
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
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (index > 0)
                        const Divider(
                          thickness: 0.8,
                        ),
                      NotificationComponenets().tile(
                        context: context,
                        isIcon: index % 3 == 0 ? true : false,
                        title: "You have a new invitation ",
                        tilePressed: () {},
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
