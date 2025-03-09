import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ResponsiveExtensions on num {
  double get fromWidth => w;

  double get fromHeight => h;

  double get fromRadius => r;

  double get fromTextSize => sp;
}
