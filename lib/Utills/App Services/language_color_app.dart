import 'package:shared_preferences/shared_preferences.dart';

class LanguageAndColorApp {
  static String appColorP = "golden";
  static const String _colorKey = "MYAPPCOLORKEYPREFS";
  static bool isGold = false;
  static bool isRed = false;
  static bool isGreen = false;
  static bool isBlue = false;

  static setColor(String colorName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_colorKey, colorName);
    if (colorName == "gold") {
      isGold = true;
      isBlue = false;
      isRed = false;
      isGreen = false;

      print("Gold");
    }
    if (colorName == "red") {
      isRed == true;
      isGold = false;
      isBlue = false;

      isGreen = false;
      print("red");
    }
    if (colorName == "green") {
      isGreen == true;
      isGold = false;
      isBlue = false;
      isRed = false;

      print("green");
    }
    if (colorName == "blue") {
      isBlue == true;
      isGold = false;

      isRed = false;
      isGreen = false;
      print("blue");
    }
    appColorP = colorName;
  }

  static getColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      appColorP = prefs.getString(_colorKey)!;
      if (appColorP == "gold") {
        isGold = true;
      }
      if (appColorP == "red") {
        isRed == true;
      }
      if (appColorP == "green") {
        isGreen == true;
      }
      if (appColorP == "blue") {
        isBlue == true;
      }
      // print("Color get in prefrences >>> " + appColorP);
    } catch (e) {
      // print("\n\n>>>>>\n" + e.toString() + "\n<<<<<<\n\n");
      appColorP = "gold";
      isGold = true;
    }
  }
}
