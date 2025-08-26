import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:e_commerce/features/authentication/screens/forget_password/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MyForgetScreen extends StatelessWidget {
  const MyForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: MyPadding.screenPadding,
        child: Column(
          children: [
            //header
            //title
            Text(MyText.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: MySizes.spaceBtwItems/2),
            //subtitle
            Text(MyText.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
            //from
            SizedBox(height: MySizes.spaceBetweenSections*2),

            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: MyText.email,
                    prefixIcon: Icon(Iconsax.direct_right)
                  ),
                ),
                SizedBox(height: MySizes.spaceBtwItems),
                
                MyElevatedButton(onPressed: ()=> Get.to(()=> ResetPassword()), child: Text(MyText.submit))

              ],
            )

            //from
          ],
        ),
      ),
    );
  }
}
