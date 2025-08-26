import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
 import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen ({super.key, required this.title, required this.subTitle, required this.image, required this.onTap});

  final String title, subTitle, image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: MyPadding.screenPadding,
          child:Column(
            children: [
              Image.asset(image,height: MyDeviceHelper.getScreenWidth(context)*0.6,),

              SizedBox(height: MySizes.spaceBtwItems),
              Text(title,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),

              SizedBox(height: MySizes.spaceBtwItems),
              Text(subTitle ,style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),

              SizedBox(height: MySizes.spaceBetweenSections),
              MyElevatedButton(onPressed: onTap, child: Text(MyText.uContinue)),


            ],
          ),
        ),

      ),

    );
  }
}
