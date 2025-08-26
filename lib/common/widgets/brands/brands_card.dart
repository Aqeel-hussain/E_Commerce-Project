 import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/rounded_contianer.dart';
import '../images/rounded_images.dart';
import '../texts/brand_title_with_verify_icon.dart';

class MyBrandCard extends StatelessWidget {
  const MyBrandCard({
    super.key,  this.showBorder = true,
  });
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      width: MySizes.brandCardWidth,
       showBorder: showBorder,
      padding: EdgeInsets.all(MySizes.sm),
      backgroundColors: Colors.transparent,
      child: Row(
        children: [
          Flexible(child: MyRoundedImage(imageUrl: MyImages.bataLogo,
          backgroundColor: Colors.transparent,)),

          SizedBox(width: MySizes.spaceBtwItems/2),


          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                MyBrandTitleWithVerifyIcon(title: 'bata', brandTextSizes: TextSizes.large,),


                Text('0 product', style: Theme.of(context).textTheme.labelMedium,overflow: TextOverflow.ellipsis,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
