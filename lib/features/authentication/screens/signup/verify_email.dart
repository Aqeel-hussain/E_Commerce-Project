import 'package:e_commerce/common/screen/success_screen.dart';
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.offAll(()=>LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: MyPadding.screenPadding,
          child:Column(
            children: [
              Image.asset(MyImages.mailSentImage,height: MyDeviceHelper.getScreenWidth(context)*0.6,),

              SizedBox(height: MySizes.spaceBtwItems),
              Text(MyText.verifyEmailTitle,style: Theme.of(context).textTheme.headlineMedium,),

              SizedBox(height: MySizes.spaceBtwItems),
              Text('example@gmail.com',style: Theme.of(context).textTheme.bodySmall),

              SizedBox(height: MySizes.spaceBtwItems),
              Text(MyText. verifyEmailSubTitle,style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),

              SizedBox(height: MySizes.spaceBtwItems),
              MyElevatedButton(onPressed: ()=>Get.to(()=>SuccessScreen(
                title: MyText.accountCreatedTitle,
                subTitle: MyText.accountCreatedSubTitle,
                image: MyImages.accountCreateImage,
                onTap: (){},
              )), child: Text(MyText.uContinue)),

              SizedBox(
                width: double.infinity,
              ),

              TextButton(onPressed: (){}, child: Text(MyText.resendEmail))

            ],
          ),
        ),

      ),

    );
  }
}
