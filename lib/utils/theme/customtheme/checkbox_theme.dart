import 'package:flutter/material.dart';

class SCheckBoxTheme{
  SCheckBoxTheme._();

  static CheckboxThemeData lightTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((status){
      if(status.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((status){
      if(status.contains(WidgetState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: WidgetStateProperty.resolveWith((status){
        if(status.contains(WidgetState.selected)){
          return Colors.white;
        }else{
          return Colors.black;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((status){
        if(status.contains(WidgetState.selected)){
          return Colors.blue;
        }else{
          return Colors.transparent;
        }
      })
  );
}