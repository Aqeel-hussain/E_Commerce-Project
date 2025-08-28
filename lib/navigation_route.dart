import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce/features/shope/screen/home/home.dart';
import 'package:e_commerce/features/shope/screen/store/store_screen.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shope/screen/wishlist/wishlist.dart';

class NavigationRoute extends StatelessWidget {
  const NavigationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Obx(()=>controller.screen[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          backgroundColor: dark ? MyColors.dark : MyColors.light,
          indicatorColor: dark
              ? MyColors.light.withValues(alpha: 0.1)
              : MyColors.dark.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },

          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance =>Get.find();

  RxInt selectedIndex = 0.obs;
  List<Widget> screen = [HomeScreen(), StoreScreen(),WishlistScreen(),ProfileScreen()];
}
