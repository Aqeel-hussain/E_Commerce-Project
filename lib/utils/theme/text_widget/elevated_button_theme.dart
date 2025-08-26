import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyElevatedButtonTheme{
  MyElevatedButtonTheme._();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.light,
      backgroundColor: MyColors.primary,
      disabledForegroundColor: MyColors.darkGrey,
      disabledBackgroundColor: MyColors.buttonDisable,
      side: const BorderSide(color: MyColors.light),
      padding: const EdgeInsets.symmetric(vertical: MySizes.buttonHeight),
      textStyle: const TextStyle( fontSize: 16, color: MyColors.whiteText, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySizes.buttonRadius))
    )
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: MyColors.light,
          backgroundColor: MyColors.primary,
          disabledForegroundColor: MyColors.darkGrey,
          disabledBackgroundColor: MyColors.darkGrey,
          side: const BorderSide(color: MyColors.primary),
          padding: const EdgeInsets.symmetric(vertical: MySizes.buttonHeight),
          textStyle: const TextStyle( fontSize: 16, color: MyColors.whiteText, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySizes.buttonRadius))
      )
  );
}