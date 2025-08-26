import 'package:e_commerce/utils/constants/colors.dart';
 import 'package:flutter/material.dart';

class MyTextTheme{
  //private constructor
  MyTextTheme._();

  static TextTheme lightTexTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold,color: MyColors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600, color: MyColors.black),
    headlineSmall: const TextStyle().copyWith(fontSize: 28,fontWeight: FontWeight.w600, color: MyColors.black),

    //title text
    titleLarge: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold,color: MyColors.dark),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600, color: MyColors.dark),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600, color: MyColors.dark),

    // body text
    bodyLarge: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold,color: MyColors.dark),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w600, color: MyColors.dark),
    bodySmall: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w600, color: MyColors.dark.withValues(alpha: 0.5)),

    // label text
    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w600, color: MyColors.dark),
    labelMedium: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w600, color: MyColors.dark.withValues(alpha: 0.5)),


  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold,color: MyColors.light),
    headlineMedium: const TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600, color: MyColors.light),
    headlineSmall: const TextStyle().copyWith(fontSize: 28,fontWeight: FontWeight.w600, color: MyColors.light),

    //title text
    titleLarge: TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold,color: MyColors.light),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600, color: MyColors.light),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600, color: MyColors.light),

    // body text
    bodyLarge: TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold,color: MyColors.light),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w600, color: MyColors.light),
    bodySmall: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w600, color: MyColors.light.withValues(alpha: 0.5)),

    // label text
    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w600, color: MyColors.light),
    labelMedium: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w600, color: MyColors.light.withValues(alpha: 0.5)),
  );
}