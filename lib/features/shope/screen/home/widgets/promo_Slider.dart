import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/shope/controller/home/home_controller.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/sizes.dart';
import 'banner_Dot_naviagtion.dart';

class MyPromoSlider extends StatelessWidget {
  const MyPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((banner) => MyRoundedImage(imageUrl: banner))
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) => controller.onPageChanged(index),
          ),
          carouselController: controller.carouselController,
        ),

        SizedBox(height: MySizes.spaceBtwItems),
        BannersDotNavigation(),
      ],
    );
  }
}
