import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
 import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MyTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MyColors.black : MyColors.white,
      child: TabBar(
        isScrollable: true,
        labelColor: dark ? MyColors.white : MyColors.primary,
        unselectedLabelColor: MyColors.darkGrey,
        indicatorColor: MyColors.primary,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceHelper.getAppBarHeight());
}
