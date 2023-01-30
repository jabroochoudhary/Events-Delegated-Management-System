import 'package:events_delegated_management_system/Modules/Event%20Detail/Componenets/sponsor_organizer_tile.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_config.dart';
import 'package:events_delegated_management_system/Utills/Theme/app_text.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';

class EventSponsorTab {
  detail({required BuildContext context}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < 10; i++)
          SaponsorOrganizerTile().tile(
            context: context,
            imageurl: "pepsi_logo.png",
            title: "Pepsi",
            subtitle: "Proud Sponsor",
            desc:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
          ),
      ],
    );
  }
}
