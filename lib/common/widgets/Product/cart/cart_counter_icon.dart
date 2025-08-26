 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class MyCartCounterIcon extends StatelessWidget {
  const MyCartCounterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = MyHelperFunctions.isDarkMode(context);

    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.shopping_bag),
          color: dark ? MyColors.dark : MyColors.light,
        ),
        Positioned(
          right: 6.0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: dark ? MyColors.dark : MyColors.light,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '4',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  fontSizeFactor: 0.8,
                  color: dark ? MyColors.dark : MyColors.light,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
