import 'package:events_delegated_management_system/Utills/App%20Services/language_color_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColor {
  static const Color transparent = const Color(0xFF00000000);
  static Color primarycolor = Get.theme.primaryColor;
  static const Color darkPrimaryColor = Color(0xFF444444);
  static const Color lightGrey1000 = Color(0xFF707070);
  static const Color lightGrey800 = Color.fromARGB(255, 159, 159, 159);
  static const Color lightGrey700 = Color(0xFFD5DDE0);
  static const Color lightGrey600 = Color(0xFFE6E6E6);
  static const Color lightGrey500 = Color.fromARGB(255, 240, 240, 240);
  static const Color blackText = Color(0xFF000000);
  static const Color dark = Color(0xFF444444);
  static const Color whiteText = Color(0xFFFFFFFF);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color darkIcon = Color(0xff9B9B9B);
  static const Color gold = Color(0xffB68D5C);

  static setColor() async {
    await LanguageAndColorApp.getColor();
    String color = LanguageAndColorApp.appColorP;
    if (color == "gold") {
      primarycolor = const Color(0xffB68D5C);
    } else if (color == "red") {
      primarycolor = Colors.red;
    } else if (color == "green") {
      primarycolor = Colors.green;
    } else if (color == "blue") {
      primarycolor = Colors.blue;
    }
    // print("In app color class " + color);
  }

  // ! Standerd Color
  // static const Color backgroundColor900 = Color(0xFF0A0836);
  // static const Color backgroundColor800 = Color(0xFF15116A);
  // static const Color backgroundColorDark = Color(0xFF0B0944);
// ! top Ranking Tile Gradient
//   static const Color color1 = Color(0xFFF68B26);
//   static const Color color2 = Color(0xFFE14855);
//   static const Color color3 = Color(0xFF90318D);
//   static const Color color4 = Color(0xFF6652A2);

// ! App Colors

  // static const Color secondarycolor = Color(0xFF707070);
  // static const Color grinshGrey = Color(0xFF5A8997);
//   static const Color greencolor = Color(0xFF06B22E);

  // Socail Links Color
  // static const Color facebook = Color(0xFF3D6AD6);
  // static const Color gmail = Color(0xFFF44336);
  // static const Color apple = Color(0xFF000000);
  // static const Color email = Color(0xFFF6A645);

// !Rendom Colors

// Success and Error Color
  // static const Color greencolor = Color(0xFF06B22E);
  // static const Color redText = Color(0xFFE96343);

// ! Text Colors

  // static const Color greenText = Color(0xFF36D22B);
}

// class HexColor extends Color {
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll('#', '');
//     if (hexColor.length == 8) {
//       hexColor = 'FF' + hexColor;
//     }
//     return int.parse(hexColor, radix: 32);
//   }
// }
