// import 'package:delayed_display/delayed_display.dart';
import 'package:events_delegated_management_system/Modules/Favorites/Views/favorites_view.dart';
import 'package:events_delegated_management_system/Modules/Profile/Views/profile_view.dart';
import 'package:events_delegated_management_system/Utills/bottom_filter_sheet.dart';
import 'package:events_delegated_management_system/Modules/Home/Views/home_view.dart';
import 'package:events_delegated_management_system/Utills/Theme/color.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // PersistentTabController _controller =
  //     PersistentTabController(initialIndex: 0);
  bool isFavSelect = false;
  final tabs = [
    HomeView(),
    FavoritesView(),
    ProfileView(),
  ];
  int _curruntIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet: BottomFilterSheet().filter(context: context),
      body: tabs[_curruntIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          // boxShadow: [
          //   BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          // ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: BottomNavigationBar(
            onTap: (indx) {
              setState(() {
                _curruntIndex = indx;
                if (_curruntIndex == 1) {
                  isFavSelect = true;
                } else {
                  isFavSelect = false;
                }
              });
            },

            currentIndex: _curruntIndex > 4 ? 0 : _curruntIndex,
            elevation: 2,
            // backgroundColor: Colors.transparent,
            // fixedColor: Colors.blue,
            selectedFontSize: 10,

            unselectedFontSize: 10,
            selectedItemColor: Get.theme.primaryColor,
            unselectedItemColor: AppColor.darkIcon,
            type: BottomNavigationBarType.fixed,
            iconSize: 35,

            selectedIconTheme: IconThemeData(color: Get.theme.primaryColor),
            unselectedIconTheme: const IconThemeData(
              color: AppColor.darkIcon,
            ),
            selectedLabelStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Get.theme.primaryColor),
            unselectedLabelStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(
                0xff9B9B9B,
              ),
            ),
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(isFavSelect
                    ? Icons.favorite
                    : Icons.favorite_border_outlined),
                label: "Favorite",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> screens() {
    return [
      HomeView(),
      HomeView(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Get.theme.primaryColor,
        inactiveColorPrimary: Color.fromARGB(255, 182, 179, 179),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        title: "Favourite",
        activeColorPrimary: Get.theme.primaryColor,
        inactiveColorPrimary: Color.fromARGB(255, 182, 179, 179),
      ),
    ];
  }
}
