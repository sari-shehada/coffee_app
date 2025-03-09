import 'dart:ui';

extension ColorExtensions on Color {
  Color applyOpacity(double value) {
    assert(value >= 0 && value <= 1);
    return withValues(alpha: value);
  }
}
