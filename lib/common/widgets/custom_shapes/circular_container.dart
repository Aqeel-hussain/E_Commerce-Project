import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';

class MyCircularContainer extends StatelessWidget {
  const MyCircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
     this.padding,
    this.margin,
    this.backgroundColors = MyColors.white,
    this.child,

  });

  final double height, width;
  final Color backgroundColors;
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: backgroundColors,
      ),
      child: child,
    );
  }
}
