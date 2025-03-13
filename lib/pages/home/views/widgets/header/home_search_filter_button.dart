import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeSearchFilterButton extends StatelessWidget {
  const HomeSearchFilterButton({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SizedBox.square(
      dimension: height,
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Icon(
            IconlyLight.filter,
            color: colorScheme.surfaceBright,
            size: 20,
          ),
        ),
      ),
    );
  }
}
