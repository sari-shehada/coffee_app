import '../../../../../core/extensions/color_extensions.dart';
import '../../../../../core/extensions/list_extensions.dart';
import '../../../../../core/extensions/responsive_extensions.dart';
import 'home_page_tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//TODO find another implementation that doesnt enforce
//setting a height constraint on the tabbar (to avoid reponsiveness issues)
class HomePageTabbarDelegate extends SliverPersistentHeaderDelegate {
  const HomePageTabbarDelegate({
    required this.tabController,
    required this.tabLabels,
    required this.currentTabIndex,
  });

  final RxInt currentTabIndex;
  final TabController tabController;
  final List<String> tabLabels;

  @override
  double get maxExtent => 71;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        boxShadow: [
          if (overlapsContent) ...[
            BoxShadow(
              offset: Offset(0, 8),
              color: colorScheme.shadow.applyOpacity(.09),
              blurRadius: 12,
            ),
          ],
        ],
      ),
      height: 71,
      curve: Easing.legacy,
      duration: 300.milliseconds,
      child: Padding(
        padding: EdgeInsets.only(top: 24.fromHeight, bottom: 16.fromHeight),
        child: SizedBox(
          width: double.infinity,
          child: TabBar(
            padding: EdgeInsetsDirectional.only(end: 24.fromWidth),
            labelPadding: EdgeInsetsDirectional.only(start: 24.fromWidth),
            splashFactory: NoSplash.splashFactory,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            controller: tabController,
            dividerHeight: 0,
            indicatorColor: Colors.transparent,
            tabs:
                tabLabels
                    .mapWithIndex(
                      (item, itemIndex) => Obx(
                        () => HomePageTabBarItem(
                          label: item,
                          isSelected: itemIndex == currentTabIndex.value,
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
    );
  }
}
