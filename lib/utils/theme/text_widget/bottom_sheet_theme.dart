import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyBottomSheetTheme{
  MyBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    modalBackgroundColor: MyColors.white,
    backgroundColor: MyColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
  showDragHandle: true,
  modalBackgroundColor: MyColors.black,
  backgroundColor: MyColors.black,
  constraints: const BoxConstraints(minWidth: double.infinity),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}