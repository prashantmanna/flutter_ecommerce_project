import 'package:flutter/material.dart';

class Scolors{
  Scolors._();

  static const Color primaryColor = Color(0xFF4B68FF);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  //text colors
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xff6C757D);
  static const Color textWhite = Colors.white;

  //background colors
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  //background container colors
  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = Scolors.white.withOpacity(0.1);

  //border colors
  static const Color borderPrimary = Color(0xffD9D9D9);
  static const Color borderSecondary = Color(0xffE6E6E6);
  //button colors
  static const Color btnPrimary = Color(0xffD9D9D9);
  static const Color btnSecondary = Color(0xffe6e6e6);

  //error and validation colors
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  //natural shades
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);
  static const Color blue = Color(0xff0000ff);

  //gradient colors
  static const Gradient linearGradient = LinearGradient(
  begin: Alignment(0.0, 0.0),
  end: Alignment(0.707, -0.707),
  colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
  ],
  );
}