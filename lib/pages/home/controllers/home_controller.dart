import '../../../config/constants/images_paths.dart';
import '../../../models/coffee.dart';
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

  final List<Coffee> coffees = [
    Coffee(
      name: 'Caffe Mocha',
      type: 'Deep Foam',
      price: 4.53,
      rating: 4.8,
      imagePath: kProductCaffeMocha,
    ),
    Coffee(
      name: 'Flat White',
      type: 'Espresso',
      price: 3.53,
      rating: 4.5,
      imagePath: kProductFlatWhite,
    ),
    Coffee(
      name: 'Mocha Fusi',
      type: 'Machiato',
      price: 6.49,
      rating: 4.88,
      imagePath: kProductMochaFusi,
    ),
    Coffee(
      name: 'Caffe Panna',
      type: 'Americano',
      price: 3.25,
      rating: 4.48,
      imagePath: kProductCaffePanna,
    ),
    Coffee(
      name: 'Flat Latte',
      type: 'Latte',
      price: 5.25,
      rating: 3.5,
      imagePath: kProductFlatLatte,
    ),
  ];
}
