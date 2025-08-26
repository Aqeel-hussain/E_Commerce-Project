import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/colors.dart';

class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: MySizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyText.popularCategories,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: MyColors.white),
          ),
          SizedBox(height: MySizes.spaceBtwItems),

          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  SizedBox(width: MySizes.spaceBtwItems),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return MyVerticalImageText(
                  title: 'sport categories',
                  image: MyImages.bedIcon,
                  textColor: Colors.white,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
