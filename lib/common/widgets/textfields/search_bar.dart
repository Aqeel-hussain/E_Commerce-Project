import 'package:e_commerce/common/style/shadow.dart';
 import 'package:e_commerce/utils/helpers/helper_functions.dart';
 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark =MyHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: 0,
        right: MySizes.spaceBetweenSections,
        left: MySizes.spaceBetweenSections,
        child: Container(
          height: MySizes.searchBarHeight,
          padding: EdgeInsets.symmetric(horizontal: MySizes.md),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MySizes.borderRadiusLg),
              color: dark? MyColors.dark :MyColors.light,
              boxShadow: MyShadow.searchBarShadow,
          ),
          child: Row(
            children: [
              Icon(Iconsax.search_normal,color: MyColors.darkGrey,),
              SizedBox(width: MySizes.spaceBtwItems),
              Text(MyText.searchBarTitle,style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ));
  }
}
