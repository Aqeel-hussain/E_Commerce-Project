import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyCheckBoxTheme {
  MyCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MySizes.xs)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return MyColors.black;
        } else {
          return MyColors.white;
        }
      }),
         fillColor: WidgetStateProperty.resolveWith((states){
          if (states.contains(WidgetState.selected)){
            return MyColors.primary;
          } else{
            return Colors.transparent;
          }})

     );
        static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(MySizes.xs)),
            checkColor: WidgetStateProperty.resolveWith((states) {
             if (states.contains(WidgetState.selected)) {
               return MyColors.white;
             } else {
               return MyColors.black;
             }
            }),
           fillColor: WidgetStateProperty.resolveWith((states){
             if (states.contains(WidgetState.selected)){
             return MyColors.primary;
            } else{
              return Colors.transparent;
            }
        }
        )
  );
}

