part of 'home_page_coffee_card_widget.dart';

class _AddToCardIconButton extends StatelessWidget {
  const _AddToCardIconButton();

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SizedBox.square(
      dimension: 34.fromRadius,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: FittedBox(
          child: Icon(IconlyBold.plus, color: colorScheme.primary),
        ),
      ),
    );
  }
}
