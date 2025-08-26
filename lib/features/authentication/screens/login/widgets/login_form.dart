 import 'package:e_commerce/features/authentication/screens/forget_password/forget_password.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup_screen.dart';
import 'package:e_commerce/navigation_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: MyText.email),
        ),
        SizedBox(height: MySizes.spaceBtwInputFields),

        //Text Form password
        TextField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.password_check), labelText: MyText.password,
              suffixIcon: Icon(Iconsax.eye)),
        ),

        SizedBox(height: MySizes.spaceBtwInputFields/2),
        //Remember me and forget password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value){}),
                Text(MyText.rememberMe)
              ],
            ),

            TextButton(onPressed: ()=>Get.to(()=>MyForgetScreen()),
                child: Text(MyText.forgetPassword)),
          ],
        ),

        //Buttons
        MyElevatedButton(onPressed: ()=>Get.to(()=>NavigationRoute()), child: Text(MyText.signIn)),
        SizedBox(height: MySizes.spaceBtwItems/2),
        SizedBox( width: double.infinity,
        child: OutlinedButton(onPressed: ()=>Get.to(()=>MySignUpScreen()), child: Text(MyText.createAccount))
        ),
      ],
    );
  }
}
