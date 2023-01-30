import 'package:events_delegated_management_system/Utills/Text%20Field/textfeilds.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar {
  appBar({
    required BuildContext context,
    GestureTapCallback? filterPressed,
    GestureTapCallback? notificationPressed,
    String name = "Jhon Smith",
    String searchTitle = "Not home screen",
    Function? onSearchChange,
    bool isOtherScreenInsteadOfHome = false,
    bool isFilter = true,
    // bool isHomeScreen = true,
    Function? onSearch,
  }) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
          AppConfig(context).height / (isOtherScreenInsteadOfHome ? 7 : 5)),
      child: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        // shadowColor: Colors.white,
        centerTitle: isOtherScreenInsteadOfHome,
        title: isOtherScreenInsteadOfHome
            ? AppText.text(
                name,
                fontsize: 20,
                fontweight: FontWeight.w700,
                color: Colors.white,
              )
            : Text(""),
        flexibleSpace: Container(
          color: Get.theme.primaryColor,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppConfig(context).width / 18),
                    // color: Colors.red,
                    height: AppConfig(context).height /
                        (isOtherScreenInsteadOfHome ? 7.5 : 5.5),
                    width: AppConfig(context).width,

                    child: isOtherScreenInsteadOfHome
                        ? SizedBox()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText.text("Good Morning!",
                                      fontsize: 12,
                                      fontweight: FontWeight.w500,
                                      color: Colors.white,
                                      textAlignment: TextAlign.left),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  AppText.text(
                                    name,
                                    fontsize: 20,
                                    fontweight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: notificationPressed,
                                child: Container(
                                  height: 31,
                                  width: 31,
                                  decoration: BoxDecoration(
                                      color: AppColor.backgroundColor,
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Icon(
                                          Icons.notifications_active,
                                          color: Get.theme.primaryColor,
                                        ),
                                      ),
                                      const Positioned(
                                          top: 6,
                                          right: 5,
                                          // top: 5,
                                          child: CircleAvatar(
                                            radius: 4,
                                            backgroundColor: Colors.red,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                    // color: Colors.red,
                  ),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.only(bottom: 0),
                      decoration: const BoxDecoration(
                        color: AppColor.backgroundColor,
                        // border: Border
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 13,
                child: SizedBox(
                  // color: Colors.transparent,
                  // height: 40,
                  width: AppConfig(context).width / 1.2,
                  child: AppTextFeild().searchFeild(
                      context: context,
                      hintText: "Search $searchTitle",
                      onSearch: onSearch,
                      onFilterClick: filterPressed,
                      isFilter: isFilter,
                      onChange: (value) {
                        onSearchChange!(value);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  detailsAppBar({
    required BuildContext context,
    String? title,
    bool isCenterTitle = false,
    bool isBackButton = false,
    bool isFavIcon = false,
    Color titleColor = AppColor.backgroundColor,
    GestureTapCallback? onFavIconPressed,
    GestureTapCallback? onBackButtonPressed,
  }) {
    return PreferredSize(
        preferredSize: Size.fromHeight(AppConfig(context).height / 6),
        child: AppBar(
          backgroundColor: AppColor.backgroundColor,
          automaticallyImplyLeading: false,
          centerTitle: isCenterTitle,
          leading: isBackButton
              ? IconButton(
                  onPressed: onBackButtonPressed,
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    weight: 20,
                    color: titleColor,
                  ),
                )
              : const SizedBox(),
          title: AppText.text(
            title,
            color: titleColor,
            fontsize: 18,
            fontweight: FontWeight.w600,
          ),
          actions: [
            CircleAvatar(
              backgroundColor: AppColor.backgroundColor,
              radius: 18,
              child: Center(
                child: InkWell(
                    onTap: onFavIconPressed,
                    child: const Icon(
                      Icons.favorite_outline,
                      size: 20,
                      color: AppColor.dark,
                    )),
              ),
            ),
            const SizedBox(
              width: 15,
            )
          ],
          bottomOpacity: 0.0,
          elevation: 0.0,
          flexibleSpace: Stack(
            children: [
              Container(
                height: AppConfig(context).height / 5,
                width: AppConfig(context).width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/event_pic.png"),
                  ),
                  // color: Colors.red,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: Colors.white,
                  ),
                  height: AppConfig(context).height / 35,
                  width: AppConfig(context).width,
                ),
              )
            ],
          ),
        ));
  }
}
