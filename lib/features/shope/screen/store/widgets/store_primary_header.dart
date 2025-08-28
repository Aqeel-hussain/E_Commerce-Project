 import 'package:flutter/material.dart';

import '../../../../../common/widgets/Appbar/appbar.dart';
import '../../../../../common/widgets/Product/cart/cart_counter_icon.dart';
import '../../../../../common/widgets/textfields/search_bar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../home/widgets/primary_header_container.dart';

class MyStorePrimaryHeader extends StatelessWidget {
  const MyStorePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: MySizes.storePrimaryHeaderHeight + 10),
        MyPrimaryHeaderContainer(
          height: MySizes.storePrimaryHeaderHeight,
          child: MyAppBar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium!
                  .apply(color: MyColors.white),
            ),
            action: [MyCartCounterIcon()],
          ),
        ),

        MySearchBar(),
      ],
    );
  }
}
