import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class MyRoundedContainer extends StatelessWidget{
  const MyRoundedContainer ({super.key,
    this.radius = MySizes.cardRadiusLg,
    this.width,
    this.height,
    this.child,
    this.showBorder = false,
    this.borderColor = MyColors.borderPrimary,
    this.backgroundColors = MyColors.white,
    this.padding,
    this.margin

  });
  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, backgroundColors;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
     return Container(
       width: width,
       height: height,
       padding: padding,
       margin: margin,
       decoration: BoxDecoration(
         color: backgroundColors,
         borderRadius: BorderRadius.circular(radius),
         border: showBorder ? Border.all(color: borderColor):null
       ),
       child: child,
     );
  }}