import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/helpers/device_helpers.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
     super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: MyDeviceHelper.getBottomNavigationBarHeight()*4,
        left: MyDeviceHelper.getScreenWidth(context)/3,
        right: MyDeviceHelper.getScreenWidth(context)/3,
        child:
        SmoothPageIndicator(
          controller: controller. pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              dotHeight: 6.0
          ),));
  }
}
