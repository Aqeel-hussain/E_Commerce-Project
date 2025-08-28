import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCircularImage extends StatelessWidget {
  const MyCircularImage({
    super.key,
    this.fit=BoxFit.cover,
    required this.image,
    this.isNetworkImage=false,
    this.overlayColor,
    this.backgroundColor,
    this.width=56,
    this.height = 56,
    this.padding = MySizes.sm,
    this.showBorder = true,
    this.borderColor = MyColors.primary,
    this.borderWidth = 1.0,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  final bool showBorder;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    final dark =  MyHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor?? (dark? MyColors.dark : MyColors.light),
        borderRadius: BorderRadius.circular(100),
        border: showBorder? Border.all(color: borderColor,width: borderWidth):null),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image(image: isNetworkImage? NetworkImage(image):AssetImage(image) as ImageProvider,fit: fit,)


      ),
    );
  }
}
