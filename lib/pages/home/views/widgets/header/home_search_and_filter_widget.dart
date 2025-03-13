import 'package:coffee_app/core/utils/ui/spacing/spacing_utils.dart';
import 'package:coffee_app/pages/home/views/widgets/header/home_search_field_widget.dart';
import 'package:coffee_app/pages/home/views/widgets/header/home_search_filter_button.dart';
import 'package:flutter/material.dart';

class HomeSearchAndFilterWidget extends StatelessWidget {
  const HomeSearchAndFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = 52.0;

    return Row(
      children: [
        Expanded(child: HomeSearchFieldWidget(height: height)),
        AddHorizontialSpacing(16),
        HomeSearchFilterButton(height: height),
      ],
    );
  }
}
