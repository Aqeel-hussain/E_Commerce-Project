import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/circular_container.dart';

class MyVerticalImageText extends StatelessWidget {
  const MyVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.backgroundColor,
    this.onTap,
  });

  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    bool dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          MyCircularContainer(
            height: 56,
            width: 56,
            backgroundColors:
                backgroundColor ?? (dark ? MyColors.dark : MyColors.light),
            padding: EdgeInsets.all(MySizes.sm),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              color: dark ? MyColors.light : MyColors.dark,
            ),
          ),
          SizedBox(height: MySizes.spaceBtwItems / 2),
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: Colors.white),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
