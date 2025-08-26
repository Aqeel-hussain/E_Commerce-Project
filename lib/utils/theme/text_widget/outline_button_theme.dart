import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class MyOutlineButtonTheme{
  MyOutlineButtonTheme._();
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: MyColors.dark,
    side: const BorderSide(color: MyColors.borderPrimary),
    textStyle: const TextStyle(fontSize: 16, color: MyColors.black, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: MySizes.buttonHeight, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySizes.buttonRadius)),
  ),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.light,
      side: const BorderSide(color: MyColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: MyColors.whiteText, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: MySizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MySizes.buttonRadius)),
    ),
  );
}