part of 'home_page_coffee_card_widget.dart';

class _CoffeeTypeTextWidget extends StatelessWidget {
  const _CoffeeTypeTextWidget({required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Text(
      type,
      style: TextStyle(fontSize: 12, color: colorScheme.outlineVariant),
    );
  }
}
