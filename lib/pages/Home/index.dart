import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hachi/pages/Home/controller.dart';
import 'package:hachi/pages/Homepage/index.dart';
import 'package:hachi/pages/Overview/index.dart';
import 'package:hachi/pages/SignUp/index.dart';
import 'package:hachi/pages/TrackingState/index.dart';
import 'package:hachi/pages/Welcome/index.dart';
import 'package:hachi/utils/styles.dart';
import 'package:hachi/utils/svg.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final HomeController h = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: buildBottomNavigationMenu(context, h),
          body: Obx(
            () => IndexedStack(
              index: h.selectedPage.value,
              children: [
                Homepage(),
                TrackingState(),
              ],
            ),
          )),
    );
  }

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            onTap: h.changePage,
            currentIndex: h.selectedPage.value,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            selectedItemColor: theme.primary,
            unselectedItemColor: theme.black10,
            backgroundColor: Colors.white,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: ' Home'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.list_rounded), label: ' Home1'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(SvgIcon.bell), label: ' Home2'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(SvgIcon.people), label: ' Home3'),
            ],
          ),
        )));
  }
}
