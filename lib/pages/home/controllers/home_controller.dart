import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    tabController = TabController(length: tabBarTabLabels.length, vsync: this);
    tabController.addListener(() {
      currentIndex.value = tabController.index;
    });
    super.onInit();
  }

  void changeCurrentTab(int value) {
    tabController.animateTo(value);
  }

  //Constants
  final List<String> tabBarTabLabels = const [
    'All Coffee',
    'Machiato',
    'Latte',
    'Americano',
  ];
}
