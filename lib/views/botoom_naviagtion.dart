import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rebuy/controllers/bottom_navigation_controller.dart';
import 'package:rebuy/views/home_screen.dart';

class BotoomNaviagtion extends StatelessWidget {
  BotoomNaviagtion({super.key});

  final List<Widget> screens = [
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavcontroller = Get.put(BottomNavigationController());

    return Scaffold(
      body: Obx(
        () => IndexedStack(
            index: bottomNavcontroller.currentIndex.value, children: screens),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: bottomNavcontroller.currentIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
          ],
          onTap: (index) {
            bottomNavcontroller.onChangeIndex(index);
          },
        ),
      ),
    );
  }
}
