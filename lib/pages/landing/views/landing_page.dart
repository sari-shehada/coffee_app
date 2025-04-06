import '../../../core/extensions/responsive_extensions.dart';
import 'widgets/landing_body_decoration_container.dart';
import 'widgets/landing_body_widget.dart';
import 'widgets/landing_image_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            height: 536.fromHeight,
            width: MediaQuery.sizeOf(context).width,
            child: LandingImageWidget(),
          ),
          Positioned(
            bottom: 0,
            height: 360.fromHeight,
            width: MediaQuery.sizeOf(context).width,
            child: LandingBodyDecorationContainer(child: LandingBodyWidget()),
          ),
        ],
      ),
    );
  }
}
