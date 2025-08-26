import 'package:e_commerce/common/widgets/Appbar/appbar.dart';
import 'package:e_commerce/common/widgets/Product/Product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/layouts/widgets_layout.dart';
import 'package:e_commerce/navigation_route.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          MyCircularIcon(
            icon: Iconsax.add,
            onPressed: () => NavigationController.instance.selectedIndex.value = 0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: MyGridLayout(itemCount: 10, itemBuilder: (context,index)=> MyProductCard())),
    );
  }
}
