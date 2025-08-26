import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        left: 0,
        right: 0,
        bottom: MySizes.spaceBtwItems,
        child:MyElevatedButton(
          onPressed:controller.nextPage ,
          child:Obx(()=> Text(controller.currentIndex.value == 2 ?'GetStarted':"Next")) ,
        ) );
  }
}
