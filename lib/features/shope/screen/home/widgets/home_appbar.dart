 import 'package:flutter/material.dart';

import '../../../../../common/widgets/Appbar/appbar.dart';
import '../../../../../common/widgets/Product/cart/cart_counter_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyText.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: MyColors.grey),
          ),

          Text(
            MyText.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: MyColors.white),
          ),
        ],
      ),

      action: [
        MyCartCounterIcon(),
      ],
    );
  }
}
