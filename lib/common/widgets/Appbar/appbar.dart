 import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/device_helpers.dart';
import '../../../utils/helpers/helper_functions.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.action,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    bool dark = MyHelperFunctions.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MySizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,

        leading: showBackArrow
            ? IconButton(
          onPressed:  Get.back,
          icon: Icon(Iconsax.arrow_left,color: dark ? MyColors.white : MyColors.dark),
        )
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceHelper.getAppBarHeight());

}
