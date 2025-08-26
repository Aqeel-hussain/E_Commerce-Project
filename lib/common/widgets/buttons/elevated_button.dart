
 import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,required this.onPressed, required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: MyDeviceHelper.getScreenWidth(context),
        child: ElevatedButton(onPressed: onPressed, child: child));
  }
}