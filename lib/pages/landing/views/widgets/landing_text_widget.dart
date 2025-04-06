import '../../../../core/extensions/responsive_extensions.dart';
import '../../../../core/utils/ui/spacing/spacing_utils.dart';
import 'package:flutter/material.dart';

class LandingTextWidget extends StatelessWidget {
  const LandingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Fall in Love with Coffee in Blissful Delight!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32.fromTextSize,
            fontWeight: FontWeight.w600,
            color: colorScheme.surface,
          ),
        ),
        AddVerticalSpacing(8.fromHeight),
        Text(
          'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.fromTextSize,
            color: colorScheme.outlineVariant,
          ),
        ),
      ],
    );
  }
}
