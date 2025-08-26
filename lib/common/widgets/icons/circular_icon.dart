import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class MyCircularIcon extends StatelessWidget {
  const MyCircularIcon({
    super.key,
    required this.icon,
    this.size = MySizes.iconMd,
    this.backgroundColor,
    this.onPressed,
    this.height,
    this.width,
    this.color,
  });

  final double? width, height, size;
  final IconData? icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: (backgroundColor != null)
              ? backgroundColor
              : dark
                  ? MyColors.dark.withValues(alpha: 0.9)
                  : MyColors.lightGrey.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(1000)),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
