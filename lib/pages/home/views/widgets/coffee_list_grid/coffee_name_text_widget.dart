part of 'home_page_coffee_card_widget.dart';

class _CoffeeNameTextWidget extends StatelessWidget {
  const _CoffeeNameTextWidget({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Text(
      name,
      style: TextStyle(
        fontSize: 16,
        color: colorScheme.onSurface,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
