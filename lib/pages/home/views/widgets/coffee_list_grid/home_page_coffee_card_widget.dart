import '../../../../../core/extensions/responsive_extensions.dart';
import '../../../../../core/utils/ui/spacing/spacing_utils.dart';
import '../../../../../models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

part 'coffee_name_text_widget.dart';
part 'add_to_card_icon_button.dart';
part 'coffee_price_text_widget.dart';
part 'coffee_rating_widget.dart';
part 'coffee_type_text_widget.dart';

class HomePageCoffeeCardWidget extends StatelessWidget {
  const HomePageCoffeeCardWidget({super.key, required this.coffee});

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Container(
      padding: EdgeInsets.only(
        top: 8.fromHeight,
        left: 8.fromWidth,
        right: 8.fromWidth,
        bottom: 12.fromHeight,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 128.fromHeight,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(coffee.imagePath, fit: BoxFit.cover),
                  _CoffeeRatingWidget(rating: coffee.rating),
                ],
              ),
            ),
          ),
          AddVerticalSpacing(8.fromHeight),
          _CoffeeNameTextWidget(name: coffee.name),
          AddVerticalSpacing(3.fromHeight),
          _CoffeeTypeTextWidget(type: coffee.type),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _CoffeePriceTextWidget(price: coffee.price),
              Spacer(),
              _AddToCardIconButton(),
            ],
          ),
        ],
      ),
    );
  }
}
