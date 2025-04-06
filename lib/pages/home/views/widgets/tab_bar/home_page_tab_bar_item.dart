import 'package:coffee_app/core/extensions/responsive_extensions.dart';
import 'package:flutter/material.dart';

class HomePageTabBarItem extends StatelessWidget {
  const HomePageTabBarItem({
    super.key,
    required this.label,
    required this.isSelected,
  });
  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    final animationDuration = Duration(milliseconds: 400);
    final animationCurve = Easing.legacy;
    return AnimatedContainer(
      duration: animationDuration,
      curve: animationCurve,
      padding: EdgeInsets.symmetric(
        vertical: 4.fromHeight,
        horizontal: 8.fromWidth,
      ),
      decoration: BoxDecoration(
        color: isSelected ? colorScheme.primary : colorScheme.surface,
        borderRadius: BorderRadius.circular(6),
      ),
      child: AnimatedDefaultTextStyle(
        duration: animationDuration,
        curve: animationCurve,
        style: TextStyle(
          color: isSelected ? colorScheme.onPrimary : colorScheme.tertiary,
          fontSize: 16.fromTextSize,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
        ),
        child: Text(label, style: TextStyle()),
      ),
    );
  }
}
