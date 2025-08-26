import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/theme/text_widget/appbar_theme.dart';
import 'package:e_commerce/utils/theme/text_widget/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/text_widget/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/text_widget/chip_theme.dart';
import 'package:e_commerce/utils/theme/text_widget/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/text_widget/outline_button_theme.dart';
import 'package:e_commerce/utils/theme/text_widget/text_field_theme.dart';
import 'package:e_commerce/utils/theme/text_widget/text_theme.dart';
import 'package:flutter/material.dart';

class MyThemes{
   static ThemeData lightTheme = ThemeData(
     useMaterial3: true,
     fontFamily: 'Nunito',
     primaryColor:MyColors.primary,
     brightness: Brightness.light,
     disabledColor: Colors.grey,
     textTheme: MyTextTheme.lightTexTheme,
     chipTheme: MyChipTheme.lightChipTheme,
     scaffoldBackgroundColor: MyColors.white,
     appBarTheme: MyAppBarTheme.lightAppBarTheme,
     checkboxTheme: MyCheckBoxTheme.lightCheckBoxTheme,
     bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
     elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
     outlinedButtonTheme: MyOutlineButtonTheme.lightOutlineButtonTheme,
     inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme,

     );
   static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
     fontFamily: 'Nunito',
     primaryColor:MyColors.primary,
     brightness: Brightness.light,
     disabledColor: Colors.grey,
     textTheme: MyTextTheme.lightTexTheme,
     chipTheme: MyChipTheme.lightChipTheme,
     scaffoldBackgroundColor: MyColors.white,
     appBarTheme: MyAppBarTheme.lightAppBarTheme,
     checkboxTheme: MyCheckBoxTheme.lightCheckBoxTheme,
     bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
     elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
     outlinedButtonTheme: MyOutlineButtonTheme.lightOutlineButtonTheme,
     inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme,

   );
 }