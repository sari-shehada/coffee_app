import 'package:flutter/material.dart';

import 'theme_constants.dart';

final lightTheme = ThemeData(
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: _brownNormal,
    primaryContainer: _brownLight,
    onPrimary: _surfaceWhite,
    onSurface: _greyNormalActive,
    onSurfaceVariant: _greyNormalHover,
    outline: _greyLightHover,
    outlineVariant: _greyLighter,
    surfaceContainerLow: _surfaceLightActive,
    surface: _surfaceLight,
    surfaceContainerHighest: _surfaceWhite,
    secondary: _brownNormal,
    onSecondary: _surfaceWhite,
    error: Colors.red,
    onError: _surfaceWhite,
    shadow: _shadowContainer,
    tertiary: _tertiray,
    tertiaryFixedDim: _tertiaryFixedDim,
  ),
);

//Colors as constants as represented in the Figma design file
//Foundation/Brown/Normal
const Color _brownNormal = Color(0xFFC67C4E);
//Foundation/Brown/Light
const Color _brownLight = Color(0xFFF9F2ED);
//Foundation/Grey/Normal :active
const Color _greyNormalActive = Color(0xFF242424);
//Foundation/Grey/Normal :hover
const Color _greyNormalHover = Color(0xFF2A2A2A);
//Foundation/Grey/Light :hover
const Color _greyLightHover = Color(0xFF909090);
//Foundation/Grey/Lighter
const Color _greyLighter = Color(0xFFA2A2A2);
//Foundation/Surface/Light :active
const Color _surfaceLightActive = Color(0xFFE3E3E3);
//Foundation/Surface/Light :active
const Color _surfaceLight = Color(0xFFF9F9F9);
//Foundation/Surface/White
const Color _surfaceWhite = Color(0xFFFFFFFF);
//Container/Shadow Container
const Color _shadowContainer = Color(0xFF050505);
//Container/Container Gradiant
const Color _tertiray = Color(0xFF313131);
//Container/Container Gradiant
const Color _tertiaryFixedDim = Color(0xFF111111);
