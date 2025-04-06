part of '../../home_page.dart';

class _HomeHeaderSliverDelegate extends SliverPersistentHeaderDelegate {
  const _HomeHeaderSliverDelegate({
    required this.statusBarHeight,
    required this.gapValue,
  });
  final double statusBarHeight;
  final double gapValue;
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Stack(
      children: [
        Container(
          height: 256.fromHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [colorScheme.tertiary, colorScheme.tertiaryFixedDim],
              begin: AlignmentDirectional.bottomStart,
              end: AlignmentDirectional.topEnd,
            ),
          ),
        ),
        SizedBox(
          height: getCurrentHeight(shrinkOffset),
          child: Padding(
            padding: EdgeInsets.only(
              left: 24.fromWidth,
              right: 24.fromWidth,
              top: statusBarHeight,
            ),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                addGap,
                SizedBox(
                  height: locationWidgetHeight,
                  child: HomeLocationTextWidget(),
                ),
                addGap,
                HomeSearchAndFilterWidget(),
                addGap,
                HomePromoWidget(),
                addGap,
              ],
            ),
          ),
        ),
      ],
    );
  }

  AddVerticalSpacing get addGap => AddVerticalSpacing(gapValue);

  double getCurrentHeight(double shrinkOffset) =>
      (maxExtent - shrinkOffset).clamp(minExtent, maxExtent);

  double get locationWidgetHeight => 43.fromHeight;

  @override
  double get maxExtent => 307.fromHeight + statusBarHeight;

  @override
  double get minExtent =>
      (gapValue * 2) + locationWidgetHeight + statusBarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
