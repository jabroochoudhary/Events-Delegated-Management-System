import 'package:events_delegated_management_system/Modules/Event%20Detail/Views/event_detail_tab.dart';
import 'package:events_delegated_management_system/Modules/Event%20Detail/Views/event_organizers_tab.dart';
import 'package:events_delegated_management_system/Modules/Event%20Detail/Views/event_speakers_tab.dart';
import 'package:events_delegated_management_system/Modules/Event%20Detail/Views/event_sponsor_tab.dart';
// import 'package:events_delegated_management_system/Utills/App%20Bar/my_app_bar.dart';
import 'package:events_delegated_management_system/Utills/App%20Button/app_button.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventDetailsView extends StatefulWidget {
  EventDetailsView({Key? key}) : super(key: key);

  @override
  State<EventDetailsView> createState() => _EventDetailsViewState();
}

class _EventDetailsViewState extends State<EventDetailsView> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> tabsScreen = [
      EventDetailTab().detail(context: context),
      EventSpeakersTab().detail(context: context),
      EventSponsorTab().detail(context: context),
      EventOrganizerTab().detail(context: context),
    ];
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                height: AppConfig(context).height * 0.20,
                width: AppConfig(context).width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/event_pic.png"),
                  ),
                ),
              )),
          Positioned(
            top: AppConfig(context).height / 30,
            child: SizedBox(
              width: AppConfig(context).width,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      weight: 20,
                      color: AppColor.backgroundColor,
                    ),
                  ),
                  AppText.text(
                    "Invitation Details",
                    fontsize: 18,
                    fontweight: FontWeight.w600,
                    color: AppColor.backgroundColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: (() {}),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColor.backgroundColor,
                        child: Icon(
                          Icons.favorite_border_outlined,
                          size: 23,
                          weight: 20,
                          color: AppColor.dark.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppConfig(context).width * 0.040,
              ),
              height: AppConfig(context).height * 0.82,
              width: AppConfig(context).width,
              decoration: const BoxDecoration(
                color: AppColor.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Appbutton.primaryButton(
                          context: context,
                          title: "Details",
                          width: AppConfig(context).width * 0.22,
                          height: AppConfig(context).width / 11,
                          borderradius: 11,
                          backGroundColor: _tabIndex == 0
                              ? Get.theme.primaryColor
                              : AppColor.backgroundColor,
                          titleColor: _tabIndex == 0
                              ? AppColor.backgroundColor
                              : AppColor.blackText.withOpacity(0.3),
                          callback: () {
                            if (_tabIndex != 0) {
                              setState(() {
                                _tabIndex = 0;
                              });
                            }
                          },
                          fontsize: 12,
                          elevation: 2,
                        ),
                        Appbutton.primaryButton(
                          context: context,
                          title: "Speakers",
                          width: AppConfig(context).width * 0.22,
                          height: AppConfig(context).width / 11,
                          borderradius: 11,
                          backGroundColor: _tabIndex == 1
                              ? Get.theme.primaryColor
                              : AppColor.backgroundColor,
                          titleColor: _tabIndex == 1
                              ? AppColor.backgroundColor
                              : AppColor.blackText.withOpacity(0.3),
                          callback: () {
                            if (_tabIndex != 1) {
                              setState(() {
                                _tabIndex = 1;
                              });
                            }
                          },
                          fontsize: 12,
                          elevation: 2,
                        ),
                        Appbutton.primaryButton(
                          context: context,
                          title: "Sponsors",
                          width: AppConfig(context).width * 0.22,
                          height: AppConfig(context).width / 11,
                          borderradius: 11,
                          backGroundColor: _tabIndex == 2
                              ? Get.theme.primaryColor
                              : AppColor.backgroundColor,
                          titleColor: _tabIndex == 2
                              ? AppColor.backgroundColor
                              : AppColor.blackText.withOpacity(0.3),
                          callback: () {
                            if (_tabIndex != 2) {
                              setState(() {
                                _tabIndex = 2;
                              });
                            }
                          },
                          fontsize: 12,
                          elevation: 2,
                        ),
                        Appbutton.primaryButton(
                          context: context,
                          title: "Organizers",
                          width: AppConfig(context).width * 0.22,
                          height: AppConfig(context).width / 11,
                          borderradius: 11,
                          backGroundColor: _tabIndex == 3
                              ? Get.theme.primaryColor
                              : AppColor.backgroundColor,
                          titleColor: _tabIndex == 3
                              ? AppColor.backgroundColor
                              : AppColor.blackText.withOpacity(0.3),
                          callback: () {
                            if (_tabIndex != 3) {
                              setState(() {
                                _tabIndex = 3;
                              });
                            }
                          },
                          fontsize: 12,
                          elevation: 2,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppConfig(context).width / 20,
                          vertical: AppConfig(context).height / 35),
                      child: tabsScreen[_tabIndex],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
