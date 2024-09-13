import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/theme/customtheme/app_bar.dart';
import 'package:flutter_ecommerce_project/utils/theme/customtheme/bottom_sheet.dart';
import 'package:flutter_ecommerce_project/utils/theme/customtheme/checkbox_theme.dart';
import 'package:flutter_ecommerce_project/utils/theme/customtheme/chip_theme.dart';
import 'package:flutter_ecommerce_project/utils/theme/customtheme/elevatedButtonTheme.dart';
import 'package:flutter_ecommerce_project/utils/theme/customtheme/outlinedButtonTheme.dart';
import 'package:flutter_ecommerce_project/utils/theme/customtheme/text_fieldTheme.dart';
import 'package:flutter_ecommerce_project/utils/theme/customtheme/text_theme.dart';

class SAppTheme {
  SAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: STextTheme.lightTextTheme,
      elevatedButtonTheme: SElevatedbuttontheme.lightTheme,
      checkboxTheme: SCheckBoxTheme.lightTheme,
      appBarTheme: SAppBar.lightAppBar,
      bottomSheetTheme: SBottomSheetTheme.lightTheme,
      outlinedButtonTheme: SOutlinedButtonTheme.lightTheme,
      inputDecorationTheme: STextFieldTheme.lightTheme,
      chipTheme: SChipTheme.lightTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: STextTheme.darkTextTheme,
      elevatedButtonTheme: SElevatedbuttontheme.darkTheme,
      outlinedButtonTheme: SOutlinedButtonTheme.darkTheme,
      appBarTheme: SAppBar.darkAppBar,
      bottomSheetTheme: SBottomSheetTheme.darkTheme,
      checkboxTheme: SCheckBoxTheme.darkTheme,
      inputDecorationTheme: STextFieldTheme.darkTheme,
      chipTheme: SChipTheme.darkTheme);
}
