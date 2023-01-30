import 'package:events_delegated_management_system/Modules/Authentication/Views/login_view.dart';
import 'package:events_delegated_management_system/Modules/Authentication/Views/splash_screen.dart';
import 'package:events_delegated_management_system/Modules/Dashboard/Views/Dashboard.dart';
import 'package:events_delegated_management_system/Modules/Home/Views/home_view.dart';
import 'package:events_delegated_management_system/Utills/App%20Services/theme_data.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppColor.setColor();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomThemesData.getThemeData(),
      home: Dashboard(),
    );
  }
}
