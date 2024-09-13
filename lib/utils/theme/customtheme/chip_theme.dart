import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';

class SChipTheme{
  SChipTheme._();

  static ChipThemeData lightTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Scolors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor: Colors.white,
      shape: const CircleBorder(),

  );

  static ChipThemeData darkTheme = const ChipThemeData(
      disabledColor: Colors.grey,
      labelStyle: TextStyle(color: Colors.white),
      selectedColor: Scolors.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
      checkmarkColor: Colors.white,
      shape: CircleBorder()
  );
}