import 'package:e_commerce/utils/constants/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import 'brand_title_text.dart';

class MyBrandTitleWithVerifyIcon extends StatelessWidget {
  const MyBrandTitleWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines=1,
    this.textColor,
    this.iconColor=MyColors.primary,
    this.textAlign=TextAlign.center,
    this.brandTextSizes =  TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: MyBrandTitleText
          (title: title,
        maxLines: maxLines,
        textAlign: textAlign,
        brandTextSizes: brandTextSizes,
        color: textColor,)),
        SizedBox(width: MySizes.xs),
        Icon(Iconsax.verify5, color: MyColors.primary, size: MySizes.iconXs),
      ],
    );
  }
}
