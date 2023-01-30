import 'package:events_delegated_management_system/Modules/Add%20Companions/Views/add_companions_view.dart';
import 'package:events_delegated_management_system/Modules/Contacts/Views/contacts_view.dart';
import 'package:events_delegated_management_system/Modules/Documents/Views/documents_view.dart';
import 'package:events_delegated_management_system/Modules/Event%20Detail/Event%20Modules/Views/companions_view.dart';
import 'package:events_delegated_management_system/Modules/Event%20Detail/Event%20Modules/Views/uploads_image_view.dart';
import 'package:events_delegated_management_system/Modules/Hotels/Views/hotels_view.dart';
import 'package:events_delegated_management_system/Modules/Transportation/Views/transportations_view.dart';
import 'package:events_delegated_management_system/Utills/App%20Button/app_button.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventDetailTab {
  detail({required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.text(
              "About",
              fontsize: 16,
              fontweight: FontWeight.w700,
              color: AppColor.blackText,
            ),
            Appbutton.primaryButton(
              context: context,
              title: "Attending",
              backGroundColor: Get.theme.primaryColor,
              callback: () {},
              fontsize: 8,
              height: AppConfig(context).height * 0.025,
              width: AppConfig(context).width * 0.19,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 14,
                  width: 14,
                  // decoration: const BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage("assets/people.png"),
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                  child: Icon(
                    Icons.people_rounded,
                    color: Get.theme.primaryColor,
                    size: 15,
                  ),
                ),
                AppText.text("35 people are going",
                    fontsize: 10,
                    fontweight: FontWeight.w500,
                    color: AppColor.lightGrey800)
              ],
            ),
            Stack(
              children: [
                ...List.generate(
                  5,
                  (index) => Padding(
                    padding: EdgeInsets.only(left: index * 20),
                    child: Container(
                      // color: AppColor.dark,
                      height: 23,
                      width: 23,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/girl.png"),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 4
                                ? AppColor.dark.withOpacity(0.5)
                                : Colors.transparent,
                            shape: BoxShape.circle),
                        child: Center(
                          child: index == 4
                              ? AppText.text("+25",
                                  color: AppColor.backgroundColor,
                                  fontsize: 7,
                                  fontweight: FontWeight.w500,
                                  maxlines: 2)
                              : SizedBox(),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              height: 14,
              width: 14,
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("assets/location.png"),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              child: Icon(
                Icons.fmd_good,
                color: Get.theme.primaryColor,
                size: 15,
              ),
            ),
            AppText.text("Dubai MOI, Dubai",
                fontsize: 10,
                fontweight: FontWeight.w500,
                color: AppColor.lightGrey800)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(0),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: AppColor.lightGrey500,
                  borderRadius: BorderRadius.circular(7)),
              // child: const Image(
              //   image: AssetImage("assets/calendar_22.png"),
              //   fit: BoxFit.fill,
              // ),
              child: Icon(
                Icons.calendar_month_rounded,
                color: Get.theme.primaryColor,
                size: 25,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.text(
                  "23 October, 2022",
                  fontsize: 8,
                  fontweight: FontWeight.w500,
                  color: AppColor.lightGrey800,
                ),
                AppText.text(
                  "Monday, 5:11 PM",
                  fontsize: 12,
                  fontweight: FontWeight.w600,
                  color: Get.theme.primaryColor,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: AppConfig(context).height / 25,
        ),
        AppText.text(
          "Description",
          fontsize: 16,
          fontweight: FontWeight.w700,
          color: AppColor.blackText,
        ),
        SizedBox(
          height: AppConfig(context).height / 55,
        ),
        AppText.text(
          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document.",
          fontsize: 12,
          maxlines: 4,
          fontweight: FontWeight.w500,
          color: AppColor.lightGrey800,
          textAlignment: TextAlign.left,
        ),
        SizedBox(
          height: AppConfig(context).height / 25,
        ),
        AppText.text(
          "Venue Details",
          fontsize: 16,
          fontweight: FontWeight.w700,
          color: AppColor.blackText,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(0),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: AppColor.lightGrey500,
                  borderRadius: BorderRadius.circular(6)),
              // child: const Image(
              //   image: AssetImage("assets/address.png"),
              //   fit: BoxFit.fill,
              // ),
              child: Icon(
                Icons.share_location_outlined,
                color: Get.theme.primaryColor,
                size: 25,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.text(
                  "ABC Hotel, First Hall Ministry of Interior, Abu Dhabi",
                  fontsize: 10,
                  fontweight: FontWeight.w500,
                  color: AppColor.lightGrey800,
                ),
                const SizedBox(
                  height: 4,
                ),
                AppText.text(
                  "View on Map",
                  fontsize: 8,
                  fontweight: FontWeight.w400,
                  color: Get.theme.primaryColor,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: AppConfig(context).height / 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.text(
              "Uploads:",
              fontsize: 16,
              fontweight: FontWeight.w700,
              color: AppColor.blackText,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.text(
                  "Add more",
                  fontsize: 10,
                  fontweight: FontWeight.w500,
                  color: AppColor.blackText,
                ),
                const SizedBox(
                  width: 8,
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Get.theme.primaryColor,
                  child: const Icon(
                    Icons.add,
                    size: 12,
                    color: AppColor.backgroundColor,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              5,
              (index) => InkWell(
                onTap: () => Get.to(() => UploadsImageView()),
                child: Container(
                  // color: AppColor.dark,
                  height: 76,
                  width: 56,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/speaker_person.png"),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == 4
                          ? AppColor.dark.withOpacity(0.5)
                          : Colors.transparent,
                      // shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: index == 4
                          ? AppText.text("+2",
                              color: AppColor.backgroundColor,
                              fontsize: 22,
                              fontweight: FontWeight.w700,
                              maxlines: 2)
                          : SizedBox(),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: AppConfig(context).height / 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.text(
              "Companions:",
              fontsize: 16,
              fontweight: FontWeight.w700,
              color: AppColor.blackText,
            ),
            InkWell(
              onTap: () => Get.to(() => AddCompanionsView()),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText.text(
                    "Add more",
                    fontsize: 10,
                    fontweight: FontWeight.w500,
                    color: AppColor.blackText,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Get.theme.primaryColor,
                    child: const Icon(
                      Icons.add,
                      size: 12,
                      color: AppColor.backgroundColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                3,
                (index) => InkWell(
                  onTap: () => Get.to(() => CompanionsView()),
                  child: Container(
                    margin: EdgeInsets.only(right: 7),
                    height: AppConfig(context).height / 5,
                    width: AppConfig(context).width / 3.5,
                    decoration: BoxDecoration(
                      color: AppColor.lightGrey500,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      // alignment: Alignment.topCenter,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Image(
                          height: 90,
                          width: 90,
                          fit: BoxFit.cover,
                          image: AssetImage("assets/companions.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: AppText.text(
                            "Ahmad Daniyal",
                            maxlines: 2,
                            fontsize: 12,
                            fontweight: FontWeight.w600,
                            color: Get.theme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppConfig(context).height / 15,
        ),
        InkWell(
          onTap: () => Get.to(() => HotelsView()),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: 50,
            decoration: BoxDecoration(
              color: AppColor.lightGrey500,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.text(
                  "Hotels",
                  fontsize: 14,
                  fontweight: FontWeight.w600,
                  color: AppColor.blackText,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.blackText,
                  size: 19,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () => Get.to(() => TransportationsView()),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: 50,
            decoration: BoxDecoration(
              color: AppColor.lightGrey500,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.text(
                  "Transportation",
                  fontsize: 14,
                  fontweight: FontWeight.w600,
                  color: AppColor.blackText,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.blackText,
                  size: 19,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () => Get.to(() => DocumentsView()),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: 50,
            decoration: BoxDecoration(
              color: AppColor.lightGrey500,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.text(
                  "Documents",
                  fontsize: 14,
                  fontweight: FontWeight.w600,
                  color: AppColor.blackText,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.blackText,
                  size: 19,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () => Get.to(() => ContactsView()),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: 50,
            decoration: BoxDecoration(
              color: AppColor.lightGrey500,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.text(
                  "Contacts",
                  fontsize: 14,
                  fontweight: FontWeight.w600,
                  color: AppColor.blackText,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.blackText,
                  size: 19,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
