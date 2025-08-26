import 'package:flutter/cupertino.dart';

import '../../../utils/constants/sizes.dart';

class MyGridLayout extends StatelessWidget {
  const MyGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisCount = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisCount;
  final Widget Function(BuildContext, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: MySizes.gridViewSpacing,
        crossAxisSpacing: MySizes.gridViewSpacing,
        mainAxisExtent: mainAxisCount,
      ),
      itemBuilder: itemBuilder
    );
  }
}
