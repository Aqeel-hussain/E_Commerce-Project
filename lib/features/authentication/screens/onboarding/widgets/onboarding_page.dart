
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utils/constants/sizes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    super.key, required this.animation, required this.title,
  });
  final String animation;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only( top: MySizes.defaultSpace),
        child: Column(
          children: [
            Lottie.asset(animation),
            Text(title, style: Theme.of(context).textTheme.headlineMedium,)
          ],
        )
    );
  }
}
