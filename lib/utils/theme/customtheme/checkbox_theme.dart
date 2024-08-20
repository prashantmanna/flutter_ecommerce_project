import 'package:flutter/material.dart';

class SCheckBoxTheme{
  SCheckBoxTheme._();

  static CheckboxThemeData lightTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((status){
      if(status.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((status){
      if(status.contains(MaterialState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((status){
        if(status.contains(MaterialState.selected)){
          return Colors.white;
        }else{
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((status){
        if(status.contains(MaterialState.selected)){
          return Colors.blue;
        }else{
          return Colors.transparent;
        }
      })
  );
}