import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

import '../../../Utills/Theme/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/app_logo.png"))),
            ),
            const SizedBox(
              height: 10,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 700),
              child: AppText.nameText("EDMS",
                            color: AppColor.backgroundColor,
            
                  fontweight: FontWeight.w300, fontsize: 32),
            ),
            const SizedBox(
              height: 10,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 1400),
              child: AppText.text("نظام إدارة الفعاليات والتفويضات",
                  fontweight: FontWeight.w400, fontsize: 14,
                            color: AppColor.backgroundColor,
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 2000),
              child: AppText.text("Events & Delegated Management System",
                  fontweight: FontWeight.w400, fontsize: 14,
                  color: AppColor.backgroundColor,),
            ),
          ],
        ),
      ),
    );
  }
}
