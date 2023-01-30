import 'dart:async';

import 'package:delayed_display/delayed_display.dart';
import 'package:events_delegated_management_system/Modules/Authentication/View%20Model/auth_view_model.dart';
import 'package:events_delegated_management_system/Modules/Authentication/Views/forget_password_view.dart';
import 'package:events_delegated_management_system/Modules/Dashboard/Views/Dashboard.dart';
// import 'package:events_delegated_management_system/Modules/Home/Views/home_view.dart';
import 'package:events_delegated_management_system/Utills/App%20Button/app_button.dart';
import 'package:events_delegated_management_system/Utills/Text%20Field/textfeilds.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:events_delegated_management_system/Utills/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/Theme/app_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hight = AppConfig(context).height;
    final width = AppConfig(context).width;
    final _authController = Get.put(AuthViewModel());

    return Scaffold(
      body: Obx(
        () => Container(
          height: AppConfig(context).height,
          width: AppConfig(context).width,
          color: Get.theme.primaryColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: width,
                  height: hight * 0.3,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: hight * 0.15,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Get.theme.primaryColor, BlendMode.color),
                                  image: AssetImage("assets/app_logo.png"))),
                        ),
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 700),
                          child: AppText.nameText("EDMS",
                              color: Colors.white,
                              fontweight: FontWeight.w300,
                              fontsize: 32),
                        ),
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 1400),
                          child: AppText.text("نظام إدارة الفعاليات والتفويضات",
                              color: Colors.white,
                              fontweight: FontWeight.w400,
                              fontsize: 10),
                        ),
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 2000),
                          child: AppText.text(
                              "Events & Delegated Management System",
                              color: Colors.white,
                              fontweight: FontWeight.w400,
                              fontsize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                DelayedDisplay(
                    delay: Duration(seconds: 1),
                    child: Container(
                      height: hight * 0.7,
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, top: 24),
                      width: width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: width * 0.02),
                              child: AppText.text("Username",
                                  textAlignment: TextAlign.left,
                                  color: Colors.black,
                                  fontsize: 18,
                                  fontweight: FontWeight.w600),
                            ),
                            SizedBox(height: hight * 0.01),
                            AppTextFormFiledWithOutLabel(
                              keyboardtype: TextInputType.emailAddress,
                              text: "Enter your username",
                              fontweight: FontWeight.w400,
                              cntr: _authController.userNameController.value,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: width * 0.15),
                              child: AppText.text("Password",
                                  textAlignment: TextAlign.left,
                                  color: Colors.black,
                                  fontsize: 18,
                                  fontweight: FontWeight.w600),
                            ),
                            SizedBox(height: hight * 0.01),
                            AppTextFormFiledWithOutLabel(
                              text: "Enter your password",
                              fontweight: FontWeight.w400,
                              isPassword: true,
                              cntr: _authController.passwordController.value,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: _authController.isStayLogin.value,
                                      checkColor: AppColor.backgroundColor,
                                      activeColor: Get.theme.primaryColor,
                                      onChanged: ((value) {
                                        _authController.isStayLogin.value =
                                            value!;
                                      }),
                                    ),
                                    AppText.text("Stay logged in?",
                                        fontsize: 12,
                                        fontweight: FontWeight.w400,
                                        color: Color(0xff707070))
                                  ],
                                ),
                                InkWell(
                                  onTap: (() {
                                    Get.to(ForgetPasswordView());
                                  }),
                                  child: AppText.text("Forgot Password?",
                                      fontsize: 12,
                                      fontweight: FontWeight.w400,
                                      color: Color(0xff707070)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: hight * 0.03,
                            ),
                            _authController.isLoading.value
                                ? Center(
                                    child: CircularProgressIndicator(
                                      color: Get.theme.primaryColor,
                                    ),
                                  )
                                : Appbutton.primaryButton(
                                    context: context,
                                    title: "Login",
                                    backGroundColor: Get.theme.primaryColor,
                                    callback: () {
                                      _authController.userLogin();
                                      // Get.offAll(() => Dashboard());
                                    },
                                  ),
                          ]),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
