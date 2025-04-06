part of 'home_page_coffee_card_widget.dart';

class _CoffeeRatingWidget extends StatelessWidget {
  const _CoffeeRatingWidget({required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 14.fromWidth,
          end: 8.fromWidth,
          top: 8.fromHeight,
          bottom: 8.fromHeight,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              IconlyBold.star,
              size: 12.fromRadius,
              color: Color(0xFFFBBE21),
            ),
            AddHorizontialSpacing(4.fromWidth),
            Text(
              rating.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 12.fromTextSize,
                color: colorScheme.surfaceContainerHighest,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
