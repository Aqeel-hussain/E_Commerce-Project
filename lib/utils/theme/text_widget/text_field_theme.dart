import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyTextFieldTheme{
  MyTextFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MyColors.darkGrey,
    suffixIconColor: MyColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: MySizes.fontSizeSm,color: MyColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: MySizes.fontSizeSm, color: MyColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith( color: MyColors.black.withValues(alpha:0.8)),
    border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
    borderSide: const BorderSide(width: 1, color: MyColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
        borderSide: const BorderSide(width: 1, color: MyColors.grey),),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MyColors.warning),
    ),


  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MyColors.darkGrey,
    suffixIconColor: MyColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: MySizes.fontSizeSm,color: MyColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: MySizes.fontSizeSm, color: MyColors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith( color: MyColors.white.withValues(alpha:0.8)),
    border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.white),),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MyColors.warning),
    ),


  );
}