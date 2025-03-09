import 'package:coffee_app/core/extensions/responsive_extensions.dart';
import 'package:coffee_app/core/utils/ui/buttons/call_to_action_button.dart';
import 'package:coffee_app/core/utils/ui/spacing/spacing_utils.dart';
import 'package:coffee_app/pages/landing/views/widgets/landing_text_widget.dart';
import 'package:flutter/material.dart';

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
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Scaffold()),
                ),
          ),
        ],
      ),
    );
  }
}
