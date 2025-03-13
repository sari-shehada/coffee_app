import 'package:coffee_app/pages/home/controllers/home_controller.dart';
import 'package:coffee_app/pages/home/views/widgets/header/home_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeHeaderWidget(),
          // Stack(
          //   children: [
          //     // Image.asset(name)
          //   ],
          // ),
        ],
      ),
    );
  }
}
