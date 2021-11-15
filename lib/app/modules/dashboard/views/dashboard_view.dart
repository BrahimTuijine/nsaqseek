import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/home/views/home_view.dart';
import 'package:nsaqseek/app/modules/search/views/search_view.dart';
import 'package:nsaqseek/app/modules/seggussions/views/seggussions_view.dart';
import 'package:nsaqseek/app/modules/services/views/services_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavyBar(
            backgroundColor: Colors.white,
            containerHeight: 60,
            onItemSelected: controller.changeTabIndex,
            selectedIndex: controller.tabIndex,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: const Icon(Icons.home),
                title: const Text('الرئيسية'),
                activeColor: const Color(0xFF01706E),
                inactiveColor: Colors.grey,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.book),
                title: const Text('الخدمات'),
                activeColor: const Color(0xFF01706E),
                inactiveColor: Colors.grey,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.apartment),
                title: const Text('المقترحات'),
                activeColor: const Color(0xFF01706E),
                inactiveColor: Colors.grey,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.search_rounded),
                title: const Text('البحث'),
                activeColor: const Color(0xFF01706E),
                inactiveColor: Colors.grey,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          body: btnNavBarPages(),
        );
      },
    );
  }

  Widget btnNavBarPages() {
    switch (controller.tabIndex) {
      case 1:
        return const ServicesView();
      case 2:
        return const SeggussionsView();
      case 3:
        return const SearchView();
      default:
        return const HomeView();
    }
  }
}
