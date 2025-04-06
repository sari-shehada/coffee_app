import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'config/constants/design_constants.dart';
import 'config/scroll_behavior_config.dart';
import 'config/themes/light_theme.dart';
import 'pages/landing/views/landing_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: kDesignSize,
      fontSizeResolver: (fontSize, instance) => fontSize.toDouble(),
      builder:
          (context, child) => GetMaterialApp(
            theme: lightTheme,
            scrollBehavior: ScrollBehaviorConfig(),
            home: LandingPage(),
          ),
    );
  }
}
