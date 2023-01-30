import 'package:events_delegated_management_system/Modules/Hotels/Components/hotel_components.dart';
import 'package:events_delegated_management_system/Utills/App%20Bar/my_app_bar.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';

import '../Components/documents_components.dart';

class DocumentsView extends StatefulWidget {
  DocumentsView({Key? key}) : super(key: key);

  @override
  State<DocumentsView> createState() => _DocumentsViewState();
}

class _DocumentsViewState extends State<DocumentsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor.withOpacity(0.97),
      appBar: MyAppBar().appBar(
        context: context,
        isOtherScreenInsteadOfHome: true,
        name: "Documents",
        searchTitle: "Documents",
        isFilter: false,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: 12, top: 12, left: 20, right: 20),
            child: DocumentsComponenets().card(
              context: context,
              docname: "Transportation",
            ),
          );
        },
      ),
    );
  }
}
