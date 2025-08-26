import 'package:e_commerce/common/widgets/brands/brands_card.dart';
import 'package:e_commerce/common/widgets/custom_shapes/rounded_contianer.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyBrandShowcase extends StatelessWidget {
  const MyBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return InkWell(
      child: MyRoundedContainer(
        showBorder: true,
        borderColor: MyColors.darkGrey,
        backgroundColors: Colors.transparent,
        padding: EdgeInsets.all(MySizes.md),
        margin: EdgeInsets.only(bottom: MySizes.spaceBtwItems),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyBrandCard(showBorder: false),

            Row(
              children: images
                  .map((image) => builderBrandImage(dark, image))
                  .toList()
            ),
          ],
        ),
      ),
    );
  }

  Widget builderBrandImage(bool dark, String image) {
    return Expanded(
      child: MyRoundedContainer(
        height: 100,
        margin: const EdgeInsets.only(right: MySizes.sm),
        padding: const EdgeInsets.all(MySizes.sm),
        backgroundColors: dark ? MyColors.darkGrey : MyColors.light,
        child: Image(image: AssetImage(image),fit: BoxFit.contain,),
      ),
    );
  }
}
