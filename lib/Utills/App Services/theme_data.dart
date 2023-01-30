import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';

import 'language_color_app.dart';

class CustomThemesData {
  static final goldTheme = ThemeData(
    primaryColor: AppColor.gold,
  );
  static final redTheme = ThemeData(
    primaryColor: Colors.red,
  );
  static final greenTheme = ThemeData(
    primaryColor: Colors.green,
  );
  static final blueTheme = ThemeData(
    primaryColor: Colors.blue,
  );

  static ThemeData getThemeData() {
    if (LanguageAndColorApp.appColorP == "gold") {
      return goldTheme;
    }
    if (LanguageAndColorApp.appColorP == "red") {
      return redTheme;
    }
    if (LanguageAndColorApp.appColorP == "green") {
      return greenTheme;
    }
    if (LanguageAndColorApp.appColorP == "blue") {
      return blueTheme;
    }
    return goldTheme;
  }
}
