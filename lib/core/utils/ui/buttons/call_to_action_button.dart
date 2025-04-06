import 'package:flutter/material.dart';

import '../../../extensions/responsive_extensions.dart';

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
    final BorderRadius borderRadius = BorderRadius.circular(16.fromRadius);
    return Container(
      height: 56.fromHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: borderRadius,
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: callback,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16.fromTextSize,
              color: colorScheme.surfaceBright,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
