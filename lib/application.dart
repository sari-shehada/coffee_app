import 'package:coffee_app/config/constants/design_constants.dart';
import 'package:coffee_app/config/scroll_behavior_config.dart';
import 'package:coffee_app/config/themes/light_theme.dart';
import 'package:coffee_app/pages/landing/views/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
