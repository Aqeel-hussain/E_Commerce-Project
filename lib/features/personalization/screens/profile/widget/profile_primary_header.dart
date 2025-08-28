import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/images/circular_image.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../shope/screen/home/widgets/primary_header_container.dart';

class MyProfilePrimaryHeader extends StatelessWidget {
  const MyProfilePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: MySizes.profilePrimaryHeaderHeight + 60),
        MyPrimaryHeaderContainer(
          height: MySizes.profilePrimaryHeaderHeight,
          child: Container(),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Center(
            child: UserProfileLogo(),
          ),
        ),
      ],
    );
  }
}

class UserProfileLogo extends StatelessWidget {
  const UserProfileLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyCircularImage(
      image: MyImages.profileLogo,
      height: 120.0,
      width: 120.0,
      borderWidth: 5.0,
      padding: 0,
    );
  }
}
