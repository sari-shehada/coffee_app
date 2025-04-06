import 'package:coffee_app/core/extensions/responsive_extensions.dart';
import 'package:coffee_app/pages/home/views/widgets/coffee_list_grid/home_page_coffee_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';

class HomePageCoffeeGridView extends GetView<HomeController> {
  const HomePageCoffeeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: controller.coffees.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 238.fromHeight,
        crossAxisSpacing: 15,
        mainAxisSpacing: 24.fromHeight,
      ),
      itemBuilder: (BuildContext context, int index) {
        var coffee = controller.coffees[index];
        return HomePageCoffeeCardWidget(coffee: coffee);
      },
    );
  }
}
