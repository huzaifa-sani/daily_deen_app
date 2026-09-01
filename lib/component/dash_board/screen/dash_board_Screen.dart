import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/profile/presentation/screen/profile_screen.dart';
import 'package:untitled/features/message/presentation/screen/chat_screen.dart';
import 'package:untitled/component/bottom_nav_bar/common_bottom_bar.dart';

import 'package:untitled/features/tasbi/tasbi/presentation/screen/tasbi_screen.dart';
import '../controller/dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});

  final List<Widget> screens = const [
    TasbiScreen(),
    Center(child: Text("Notifications Screen")),
    ChatListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        children: screens,
      ),
      bottomNavigationBar: Obx(
        () => CommonBottomNavBar(
          currentIndex: controller.currentIndex.value,
          onTap: (index) => controller.changeIndex(index),
        ),
      ),
    );
  }
}





