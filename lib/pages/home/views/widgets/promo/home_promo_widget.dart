import 'package:coffee_app/config/constants/images_paths.dart';
import 'package:coffee_app/core/extensions/responsive_extensions.dart';
import 'package:coffee_app/core/utils/ui/spacing/spacing_utils.dart';
import 'package:coffee_app/pages/home/views/widgets/promo/promo_tag_widget.dart';
import 'package:flutter/material.dart';

class HomePromoWidget extends StatelessWidget {
  const HomePromoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Container(
      height: 140.fromHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(kPromoImagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 13,
              bottom: 13,
              start: 24,
              end: 100,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PromoTagWidget(),
                AddVerticalSpacing(8),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Buy one get\none FREE',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.surfaceBright,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
