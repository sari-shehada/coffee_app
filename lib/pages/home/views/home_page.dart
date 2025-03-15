import 'package:coffee_app/core/extensions/responsive_extensions.dart';
import 'package:coffee_app/core/utils/ui/spacing/spacing_utils.dart';
import 'package:coffee_app/pages/home/controllers/home_controller.dart';
import 'package:coffee_app/pages/home/views/widgets/header/home_location_text_widget.dart';
import 'package:coffee_app/pages/home/views/widgets/header/home_search_and_filter_widget.dart';
import 'package:coffee_app/pages/home/views/widgets/promo/home_promo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.paddingOf(context).top;
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 236.fromHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [colorScheme.tertiary, colorScheme.tertiaryFixedDim],
                begin: AlignmentDirectional.bottomStart,
                end: AlignmentDirectional.topEnd,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.fromWidth,
              right: 24.fromWidth,
              top: statusBarHeight,
            ),
            child: Column(
              children: [
                gap,
                HomeLocationTextWidget(),
                gap,
                HomeSearchAndFilterWidget(),
                gap,
                HomePromoWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get gap => AddVerticalSpacing(24.fromHeight);
}
