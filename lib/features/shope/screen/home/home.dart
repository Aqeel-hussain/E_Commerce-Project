 import 'package:e_commerce/features/shope/controller/home/home_controller.dart';
import 'package:e_commerce/features/shope/screen/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shope/screen/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shope/screen/home/widgets/primary_header_contianer.dart';
import 'package:e_commerce/features/shope/screen/home/widgets/promo_Slider.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/Product/Product_cards/product_card_vertical.dart';
import '../../../../common/widgets/layouts/widgets_layout.dart';
import '../../../../common/widgets/textfields/search_bar.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(height: MySizes.homePrimaryHeaderHeight + 10),
                MyPrimaryHeaderContainer(
                  height: MySizes.homePrimaryHeaderHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyHomeAppBar(),
                      SizedBox(height: MySizes.spaceBetweenSections),

                      MyHomeCategories(),
                    ],
                  ),
                ),

                MySearchBar(),
              ],
            ),
            //banner
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  MyPromoSlider(
                    banners: [
                      MyImages.homeBanner1,
                      MyImages.homeBanner2,
                      MyImages.homeBanner3,
                      MyImages.homeBanner4,
                      MyImages.homeBanner5,
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  //section heading
                  MySectionHeading(title: 'Popular Products', onPressed: () {}),

                  //vertical products
                  const SizedBox(height: MySizes.spaceBtwItems),
                  MyGridLayout(
                    itemCount: 6, itemBuilder: (context ,index) {
                      return MyProductCard();

                  },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

