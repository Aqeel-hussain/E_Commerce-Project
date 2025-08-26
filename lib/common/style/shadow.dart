 import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class MyShadow{
  MyShadow._();
  static  List<BoxShadow> searchBarShadow = [

    BoxShadow(
      color: MyColors.black.withValues(alpha: 0.1),
      spreadRadius: 2.0,
      blurRadius: 4.0,
    )
  ];
  static List<BoxShadow> verticalProductShadow = [BoxShadow(
      color: MyColors.darkGrey.withValues(alpha: 0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  )
  ];
}