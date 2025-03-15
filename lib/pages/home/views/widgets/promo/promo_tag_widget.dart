import 'package:flutter/material.dart';

class PromoTagWidget extends StatelessWidget {
  const PromoTagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFED5151),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          'Promo',
          style: TextStyle(
            color: colorScheme.surfaceBright,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
