import 'package:flutter/material.dart';

import '../../../../config/constants/images_paths.dart';
import '../../../../core/extensions/responsive_extensions.dart';

class LandingImageWidget extends StatelessWidget {
  const LandingImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      kLandingImagePath,
      height: 702.fromHeight,
      width: 468.fromWidth,
      fit: BoxFit.fitWidth,
    );
  }
}
