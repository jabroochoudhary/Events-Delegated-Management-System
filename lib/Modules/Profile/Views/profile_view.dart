import 'dart:async';

import 'package:events_delegated_management_system/Modules/Archives/Views/archives_view.dart';
import 'package:events_delegated_management_system/Modules/Change%20Password/Views/change_password_view.dart';
import 'package:events_delegated_management_system/Modules/Profile/Componenets/profile_componenets.dart';
import 'package:events_delegated_management_system/Utills/App%20Services/language_color_app.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utills/App Services/theme_data.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: AppColor.backgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          ProfileComponents().topBar(context: context),
          Positioned(
            bottom: 0,
            child: Container(
              height: AppConfig(context).height * 0.77,
              width: AppConfig(context).width,
              padding: EdgeInsets.only(
                  top: AppConfig(context).height * 0.12,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppText.text(
                    "Nathan John",
                    fontsize: 16,
                    fontweight: FontWeight.w600,
                    color: AppColor.blackText,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        height: AppConfig(context).width / 20,
                        width: AppConfig(context).width / 20,
                        // decoration: const BoxDecoration(
                        //     shape: BoxShape.circle,
                        //     image: DecorationImage(
                        //         image: AssetImage("assets/location.png"))),
                        child: Icon(
                          Icons.fmd_good,
                          color: Get.theme.primaryColor,
                          size: 20,
                        ),
                      ),
                      AppText.text(
                        "Australia",
                        fontsize: 15,
                        fontweight: FontWeight.w400,
                        color: AppColor.lightGrey800,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppConfig(context).height * 0.07,
                  ),
                  ProfileComponents().tile(
                    context: context,
                    title: "adnan.majeed@gmail.com",
                    prefixIcon: Icons.mail,
                  ),
                  Divider(),
                  ProfileComponents().tile(
                      context: context,
                      title: "0333- 33332323",
                      prefixIcon: Icons.phone),
                  Divider(),
                  ProfileComponents().tile(
                    context: context,
                    title: "Archives Events",
                    prefixIcon: Icons.folder,
                    // sufixIconColor: Get.theme.primaryColor,
                    isSuffixIcon: true,
                    suffixIconPressed: () => Get.to(() => ArchivesView()),
                  ),
                  Divider(),
                  ProfileComponents().tile(
                    context: context,
                    title: "Change password",
                    prefixIcon: Icons.lock_outline,
                    isSuffixIcon: true,
                    suffixIconPressed: () => Get.to(() => ChangePasswordView()),
                  ),
                  Divider(),
                  ProfileComponents().tile(
                    context: context,
                    title: "Change language",
                    prefixIcon: Icons.language_outlined,
                    isSuffixText: true,
                    // titleColor: Theme.of(context).primaryColor,
                    suffixIconPressed: () async {
                      await ProfileComponents()
                          .changeLanguageBottomSheet(context: context);
                      Timer(const Duration(milliseconds: 350), () async {
                        await ProfileComponents().changeColorBottomSheet(
                          context: context,
                          isGolden: LanguageAndColorApp.isGold,
                          isBlue: LanguageAndColorApp.isBlue,
                          isRed: LanguageAndColorApp.isRed,
                          isgreen: LanguageAndColorApp.isGreen,
                          goldPressed: () async {
                            await LanguageAndColorApp.setColor("gold");
                            // await LanguageAndColorApp.getColor();
                            Navigator.of(context).pop();
                            Get.changeTheme(CustomThemesData.goldTheme);
                            // _scaffoldkey.currentState.
                          },
                          bluePressed: () async {
                            await LanguageAndColorApp.setColor("blue");
                            // await LanguageAndColorApp.getColor();
                            Get.changeTheme(CustomThemesData.blueTheme);

                            // Navigator.of(context);
                            Navigator.of(context).pop();

                            // setState(() {});
                          },
                          greenPressed: () async {
                            await LanguageAndColorApp.setColor("green");
                            // await LanguageAndColorApp.getColor();
                            Get.changeTheme(CustomThemesData.greenTheme);

                            // Navigator.of(context);
                            Navigator.of(context).pop();

                            // setState(() {});
                          },
                          redPressed: () async {
                            await LanguageAndColorApp.setColor("red");
                            // await LanguageAndColorApp.getColor();
                            Get.changeTheme(CustomThemesData.redTheme);

                            // Navigator.of(context);
                            Navigator.of(context).pop();

                            // setState(() {});
                          },
                        );
                        setState(() {});
                      });
                    },
                    suffixTex: "ENG",
                  ),
                  Divider(),
                  ProfileComponents().tile(
                    context: context,
                    title: "Logout",
                    prefixIcon: Icons.logout_outlined,
                    isSuffixIcon: true,
                    suffixIconPressed: () {
                      ProfileComponents().logoutDialogBox(
                          context: context,
                          onNoPressed: () => Navigator.pop(context),
                          onYesPresses: () => Navigator.pop(context));
                    },
                  ),
                ],
              ),
            ),
          ),
          ProfileComponents().circleProfileImage(context: context),
        ],
      ),
    );
  }
}
