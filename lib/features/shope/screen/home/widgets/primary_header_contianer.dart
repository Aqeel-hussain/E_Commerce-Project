import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/custom_shapes/circular_container.dart';
import '../../../../../common/widgets/custom_shapes/rounded_edges_container.dart';
import '../../../../../utils/constants/colors.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key,
    required this.child,
    required this.height,
  });

  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return MyRoundedEdgesContainer(
      child: Container(
        height:  height,
        color: MyColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -160,
              child: MyCircularContainer(
                height: MySizes.homePrimaryHeaderHeight,
                width: MySizes.homePrimaryHeaderHeight,
                backgroundColors: MyColors.white.withValues(alpha: 0.4),
              ),
            ),
            Positioned(
              top: 50,
              right: -250,
              child: MyCircularContainer(
                height: MySizes.homePrimaryHeaderHeight,
                width: MySizes.homePrimaryHeaderHeight,
                backgroundColors: MyColors.white.withValues(alpha: 0.4),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
