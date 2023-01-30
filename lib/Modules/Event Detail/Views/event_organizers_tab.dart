import 'package:flutter/material.dart';

import '../Componenets/sponsor_organizer_tile.dart';

class EventOrganizerTab {
  detail({required BuildContext context}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < 10; i++)
          SaponsorOrganizerTile().tile(
            context: context,
            title: "MH Studio and Co",
            subtitle: "Proud Sponsor",
            desc:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
          ),
      ],
    );
  }
}
