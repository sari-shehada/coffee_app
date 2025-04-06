import '../../../core/extensions/responsive_extensions.dart';
import '../../../core/utils/ui/spacing/spacing_utils.dart';
import '../controllers/home_controller.dart';
import 'widgets/header/home_location_text_widget.dart';
import 'widgets/header/home_search_and_filter_widget.dart';
import 'widgets/promo/home_promo_widget.dart';
import 'widgets/tab_bar/home_page_tabbar_delegate.dart';
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
          SliverPersistentHeader(
            pinned: true,
            delegate: HomePageTabbarDelegate(
              tabController: controller.tabController,
              tabLabels: controller.tabBarTabLabels,
              currentTabIndex: controller.currentIndex,
            ),
          ),
          SliverList.list(
            children: List.generate(20, (index) {
              return Opacity(
                opacity: .12,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: index.isEven ? Colors.amber : Colors.amberAccent,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  double get gapValue => 24.fromHeight;
  AddVerticalSpacing get addGap => AddVerticalSpacing(gapValue);
}
