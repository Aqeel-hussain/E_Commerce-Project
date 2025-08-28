import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/user_profile_logo.dart';

class UserProfileWithEditIcon extends StatelessWidget {
  const UserProfileWithEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: UserProfileLogo()),

        //
        Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: MyCircularIcon(
              icon:Iconsax.edit,color: Colors.black,
            )
        ),
      ],
    );
  }
}
