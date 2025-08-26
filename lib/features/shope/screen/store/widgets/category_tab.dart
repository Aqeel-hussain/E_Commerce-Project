import 'package:e_commerce/common/widgets/Product/Product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/layouts/widgets_layout.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/sizes.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
          child: Column(
            children: [
              MyBrandShowcase(
                images: [
                  MyImages.productImage43,
                  MyImages.productImage5,
                  MyImages.productImage6,
                ],
              ),

              SizedBox(height: MySizes.spaceBtwItems),
              MyBrandShowcase(
                images: [
                  MyImages.productImage5,
                  MyImages.productImage6,
                  MyImages.productImage7,
                ],
              ),
              SizedBox(height: MySizes.spaceBtwItems),

              MySectionHeading(title: 'like ', onPressed: () {}),
              MyGridLayout(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return MyProductCard();
                },
              ),

              SizedBox(height: MySizes.spaceBetweenSections),
            ],
          ),
        ),
      ],
    );
  }
}
