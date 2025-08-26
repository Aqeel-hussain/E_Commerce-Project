 import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sizes.dart';

class MySocialButton extends StatelessWidget {
  const MySocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildButton(MyImages.googleIcon,(){}),
        SizedBox(width: MySizes.spaceBtwItems),

        buildButton(MyImages.facebookIcon,(){}),

        ],
    );
  }

  Container buildButton(String image , VoidCallback onPressed) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: MyColors.grey),
            borderRadius: BorderRadius.circular(100)
        ),
        child: IconButton(onPressed: (){}, icon: Image.asset(image,height: MySizes.iconMd,width: MySizes.iconMd,)),
      );
  }
}
