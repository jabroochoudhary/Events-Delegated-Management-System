import 'package:events_delegated_management_system/Modules/Contacts/Components/contacts_components.dart';
import 'package:events_delegated_management_system/Modules/Hotels/Components/hotel_components.dart';
import 'package:events_delegated_management_system/Utills/App%20Bar/my_app_bar.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';

// import '../Components/documents_components.dart';

class ContactsView extends StatefulWidget {
  ContactsView({Key? key}) : super(key: key);

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor.withOpacity(0.97),
      appBar: MyAppBar().appBar(
        context: context,
        isOtherScreenInsteadOfHome: true,
        name: "Contacts",
        searchTitle: "Contacts",
        isFilter: false,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: 12, top: 12, left: 20, right: 20),
            child: ContactsComponents().card(
              context: context,
              name: "Jabrn Haider",
              email: "jabroochoudhary@gmail.com",
              mobileNumber: "+923155460048",
            ),
          );
        },
      ),
    );
  }
}
