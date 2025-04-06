import 'package:coffee_app/core/extensions/list_extensions.dart';
import 'package:coffee_app/core/extensions/responsive_extensions.dart';
import 'package:coffee_app/core/utils/ui/spacing/spacing_utils.dart';
import 'package:coffee_app/pages/home/controllers/home_controller.dart';
import 'package:coffee_app/pages/home/views/widgets/header/home_location_text_widget.dart';
import 'package:coffee_app/pages/home/views/widgets/header/home_search_and_filter_widget.dart';
import 'package:coffee_app/pages/home/views/widgets/promo/home_promo_widget.dart';
import 'package:coffee_app/pages/home/views/widgets/tab_bar/home_page_tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

part './widgets/header/home_header_sliver_delegate.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.paddingOf(context).top;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: _HomeHeaderSliverDelegate(
              statusBarHeight: statusBarHeight,
              gapValue: gapValue,
            ),
            pinned: true,
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 24.fromHeight,
                    bottom: 16.fromHeight,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: TabBar(
                      padding: EdgeInsetsDirectional.only(end: 24.fromWidth),
                      labelPadding: EdgeInsetsDirectional.only(
                        start: 24.fromWidth,
                      ),
                      splashFactory: NoSplash.splashFactory,
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      controller: controller.tabController,
                      dividerHeight: 0,
                      indicatorColor: Colors.transparent,
                      tabs:
                          controller.tabBarTabLabels
                              .mapWithIndex(
                                (item, itemIndex) => Obx(
                                  () => HomePageTabBarItem(
                                    label: item,
                                    isSelected:
                                        itemIndex ==
                                        controller.currentIndex.value,
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double get gapValue => 24.fromHeight;
  AddVerticalSpacing get addGap => AddVerticalSpacing(gapValue);
}
