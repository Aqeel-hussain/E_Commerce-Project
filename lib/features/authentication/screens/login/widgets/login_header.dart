 import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';

class MyLoginHeader extends StatelessWidget {
  const MyLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
       children: [
        //Title

        Text(MyText.loginTitle, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
        SizedBox(height: MySizes.sm),
        //Sub Title

      ],
    );
  }
}
