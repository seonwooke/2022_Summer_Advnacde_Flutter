import 'package:flutter/material.dart';

class AppColor {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);
  static const Color strokeBlack = Color(0x1F000000);
  static const Color dimBlack = Color(0xB3000000);

  static const MaterialColor gray = MaterialColor(
    0xFFBDBDBD,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFEEEEEE),
      300: Color(0xFFE0E0E0),
      400: Color(0xFFBDBDBD),
      500: Color(0xFF9E9E9E),
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0xFF424242),
      900: Color(0xFF212121),
    },
  );

  static const MaterialColor primary = MaterialColor(
    0xFF5C4FE1,
    <int, Color>{
      50: Color(0xFFEBEBFC),
      100: Color(0xFFCDCCF7),
      200: Color(0xFFACABF2),
      300: Color(0xFF8A89ED),
      400: Color(0xFF716CE8),
      500: Color(0xFF5C4FE1),
      600: Color(0xFF5646D5),
      700: Color(0xFF4D3AC9),
      800: Color(0xFF462EBD),
      900: Color(0xFF3A11AA),
    },
  );

  static const MaterialColor secondary = MaterialColor(
    0xFF2cece8,
    <int, Color>{
      50: Color(0xFFdffcfa),
      100: Color(0xFFb0f8f2),
      200: Color(0xFF76F3EC),
      300: Color(0xFF2cece8),
      400: Color(0xFF00e5e3),
      500: Color(0xFF00dfe3),
      600: Color(0xFF00cdcf),
      700: Color(0xFF00b6b5),
      800: Color(0xFF00a19d),
      900: Color(0xFF007c71),
    },
  );

  static const Color mainGradientSecond = Color(0xFFA904F7);
  static const Color subGradientSecond = Color(0xFFF9C3F3);
  static const Color buttonTextDisabled = Color(0xFF969696);

  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color accentTextColor = Color(0x99FFFFFF);

  static const Color error = Color(0xFFB00020);

  static const Color pressed = Color(0xFFEBEBFC);
  static const Color hover = Color(0x0A5C4FE1);
  static const Color focused = Color(0x00334fe1);
  static const Color dragged = Color(0x295C4FE1);

  static const LinearGradient mainGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [primary, mainGradientSecond]);

  static const LinearGradient subGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [primary, subGradientSecond]);

  static ColorFilter dimmed =
  ColorFilter.mode(AppColor.black.withOpacity(0.7), BlendMode.colorBurn);
}