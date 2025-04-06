part of 'home_page_coffee_card_widget.dart';

class _CoffeePriceTextWidget extends StatelessWidget {
  const _CoffeePriceTextWidget({required this.price});

  final double price;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Text(
      '\$ ${price.toStringAsFixed(2)}',
      style: TextStyle(
        fontSize: 15,
        color: colorScheme.shadow,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
