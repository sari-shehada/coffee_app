import '../../../../core/extensions/responsive_extensions.dart';
import '../../../../core/utils/ui/buttons/call_to_action_button.dart';
import '../../../../core/utils/ui/spacing/spacing_utils.dart';
import '../../../home/controllers/home_controller.dart';
import '../../../home/views/home_page.dart';
import 'landing_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

class LandingBodyWidget extends StatelessWidget {
  const LandingBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 24.fromHeight,
        left: 24.fromWidth,
        right: 24.fromWidth,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          LandingTextWidget(),
          AddVerticalSpacing(32.fromHeight),
          CallToActionButton(
            label: 'Get Started',
            callback:
                () => Get.offAll(
                  () => HomePage(),
                  binding: BindingsBuilder.put(() => HomeController()),
                ),
          ),
        ],
      ),
    );
  }
}
