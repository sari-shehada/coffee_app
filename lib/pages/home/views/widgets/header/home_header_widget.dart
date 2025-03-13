import 'package:coffee_app/core/extensions/responsive_extensions.dart';
import 'package:coffee_app/core/utils/ui/spacing/spacing_utils.dart';
import 'package:coffee_app/pages/home/views/widgets/header/home_location_text_widget.dart';
import 'package:coffee_app/pages/home/views/widgets/header/home_search_and_filter_widget.dart';
import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    final statusBarHeight = MediaQuery.paddingOf(context).top;
    return Container(
      padding: EdgeInsets.only(
        left: 24.fromWidth,
        right: 24.fromWidth,
        top: statusBarHeight,
      ),
      height: (statusBarHeight + 236.fromHeight),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorScheme.tertiary, colorScheme.tertiaryFixedDim],
          begin: AlignmentDirectional.bottomStart,
          end: AlignmentDirectional.topEnd,
        ),
      ),
      child: Column(
        children: [
          AddVerticalSpacing(24.fromHeight),
          HomeLocationTextWidget(),
          AddVerticalSpacing(24.fromHeight),
          HomeSearchAndFilterWidget(),
        ],
      ),
    );
  }
}
