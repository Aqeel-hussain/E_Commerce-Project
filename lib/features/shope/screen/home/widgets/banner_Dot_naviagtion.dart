import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controller/home/home_controller.dart';

class  BannersDotNavigation extends StatelessWidget {
  const BannersDotNavigation({super.key});


  @override
  Widget build(BuildContext context) {
    final controller =  HomeController.instance;
    return SmoothPageIndicator(
      count: 5,
      effect: ExpandingDotsEffect(
          dotHeight: 6.0
      ), controller: PageController(initialPage: controller.currentIndex.value),
    );
  }
}
