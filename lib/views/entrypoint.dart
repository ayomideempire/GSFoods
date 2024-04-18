// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newapp/constants/constants.dart';
import 'package:newapp/controllers/tab_index_controller.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:newapp/views/cart/cart_page.dart';
import 'package:newapp/views/home/home_page.dart';
import 'package:newapp/views/profile/profile_page.dart';
import 'package:newapp/views/search/search_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomepPage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            pageList[controller.tabIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedIconTheme:
                      const IconThemeData(color: Colors.black38),
                  selectedIconTheme: const IconThemeData(color: kSecondary),
                  onTap: (value) {
                    controller.setTableIndex = value;
                  },
                  currentIndex: controller.tabIndex,
                  items: [
                    BottomNavigationBarItem(
                        icon: controller.tabIndex == 0
                            ? Icon(AntDesign.appstore1)
                            : Icon(AntDesign.appstore_o),
                        label: 'Home'),
                    const BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: 'Search'),
                    const BottomNavigationBarItem(
                        icon: Badge(
                            label: Text('1'),
                            child: Icon(FontAwesome.opencart)),
                        label: 'Cart'),
                    BottomNavigationBarItem(
                        icon: controller.tabIndex == 3
                            ? Icon(FontAwesome.user_circle)
                            : Icon(FontAwesome.user_circle_o),
                        label: 'Profile'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
