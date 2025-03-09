import 'package:flutter/material.dart';

class LandingBodyDecorationContainer extends StatelessWidget {
  const LandingBodyDecorationContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, .24],
          colors: [Colors.transparent, colorScheme.shadow],
        ),
      ),
      child: child,
    );
  }
}
