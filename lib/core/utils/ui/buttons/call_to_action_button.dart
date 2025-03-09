import 'package:coffee_app/core/extensions/responsive_extensions.dart';
import 'package:flutter/material.dart';

class CallToActionButton extends StatelessWidget {
  const CallToActionButton({
    super.key,
    required this.label,
    required this.callback,
  });

  final String label;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Container(
      height: 56.fromHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(16.fromRadius),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16.fromTextSize,
          color: colorScheme.surfaceBright,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
