import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/extensions/responsive_extensions.dart';
import '../../../../../core/utils/ui/spacing/spacing_utils.dart';

class HomeLocationTextWidget extends StatelessWidget {
  const HomeLocationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: TextStyle(
            fontSize: 12.fromTextSize,
            color: colorScheme.outlineVariant,
          ),
        ),
        AddVerticalSpacing(8.fromHeight),
        Expanded(
          child: Row(
            children: [
              Text(
                'Bilzen, Tanjungbalai',
                style: TextStyle(
                  fontSize: 14.fromTextSize,
                  color: colorScheme.surfaceContainerLow,
                ),
              ),
              AddHorizontialSpacing(4.fromWidth),
              Icon(
                IconlyLight.arrow_down_2,
                size: 14.fromTextSize,
                color: colorScheme.surfaceContainerLow,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
