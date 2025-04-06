import '../../../../../core/extensions/responsive_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeSearchFieldWidget extends StatelessWidget {
  const HomeSearchFieldWidget({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.onSurfaceVariant,
        borderRadius: BorderRadius.circular(12),
      ),
      height: height,
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 16),
        child: TextField(
          style: TextStyle(
            fontSize: 14,
            color: colorScheme.surface,
            fontWeight: FontWeight.w400,
          ),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsetsDirectional.only(start: 8),
            hintStyle: TextStyle(color: colorScheme.outlineVariant),
            hintText: 'Search Coffee',
            constraints: BoxConstraints(maxHeight: 52),
            isDense: true,
            isCollapsed: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.fromRadius),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.fromRadius),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Icon(IconlyLight.search, size: 20.fromTextSize),
            prefixIconColor: colorScheme.surface,
          ),
        ),
      ),
    );
  }
}
