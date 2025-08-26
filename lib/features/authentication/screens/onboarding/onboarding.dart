 import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
 import 'package:e_commerce/utils/constants/text.dart';
  import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
        child: Stack(
          children: [


            PageView(

              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBoardingScreen(animation: MyImages.onboarding1Animation,title: MyText.onBoardingTitle1,),
                OnBoardingScreen(animation: MyImages.onboarding2Animation,title: MyText.onBoardingTitle2,),
                OnBoardingScreen(animation: MyImages.onboarding3Animation,title: MyText.onBoardingTitle3,),

              ],
            ),

            OnBoardingDotNavigation(),

            OnboardingNextButton(),

            OnboardingSkipButton()
          ],
        ),
      ),
    );
  }
}





