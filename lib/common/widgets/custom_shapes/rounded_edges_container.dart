import 'package:e_commerce/common/widgets/custom_shapes/clippers/custom_rounded_clipper.dart';
import 'package:flutter/cupertino.dart';

class MyRoundedEdgesContainer extends StatelessWidget{
  const MyRoundedEdgesContainer({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
     return ClipPath(
      clipper:  MyCustomRoundedEdges(),
      child: child,
    );
  }
}