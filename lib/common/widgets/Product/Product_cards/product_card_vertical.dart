import 'package:e_commerce/common/widgets/custom_shapes/rounded_contianer.dart';
import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/images/rounded_images.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../style/shadow.dart';
import '../../texts/brand_title_with_verify_icon.dart';
import '../../texts/product_price_text.dart';

class MyProductCard extends StatelessWidget {
  const MyProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: MyShadow.verticalProductShadow,
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyColors.darkGrey : MyColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyRoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(MySizes.sm),
              backgroundColors: dark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  Center(
                    child: MyRoundedImage(imageUrl: MyImages.productImage5),
                  ),

                  //Discount tag
                  Positioned(
                    top: 12.0,
                    child: MyRoundedContainer(
                      radius: MySizes.sm,
                      backgroundColors: MyColors.yellow.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: MySizes.sm,
                        vertical: MySizes.xs,
                      ),
                      child: Text(
                        '20%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: MyColors.black),
                      ),
                    ),
                  ),

                  //Favourite Button
                  Positioned(
                    right: 0,
                    top: 0,
                    child: MyCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MySizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyProductTitleText(title: 'Blue Bata Shoes', smallSize: true),
                  SizedBox(height: MySizes.spaceBtwItems / 2),

                  //product brand
                  MyBrandTitleWithVerifyIcon(title: 'Bata'),
                ],
              ),
            ),
            Spacer(),

            // product price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: MySizes.sm),
                  child: MyProductPriceText(price: '50'),
                ),
                Container(
                  width: MySizes.iconLg * 1.2,
                  height: MySizes.iconLg * 1.2,
                  decoration: BoxDecoration(
                    color: MyColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MySizes.cardRadiusMd),
                      bottomRight: Radius.circular(MySizes.productImageRadius),
                    ),
                  ),
                  child: Icon(Iconsax.add, color: MyColors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
