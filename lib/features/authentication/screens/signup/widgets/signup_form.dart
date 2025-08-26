import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/buttons/elevated_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text.dart';

class MySignUpForm extends StatelessWidget {
  const MySignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: MyText.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: MySizes.spaceBtwInputFields),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: MyText.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        //Email field
        SizedBox(height: MySizes.spaceBtwInputFields),

        TextField(
          decoration: InputDecoration(
            labelText: MyText.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        //Phone Number
        SizedBox(height: MySizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
            labelText: MyText.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),

        //password
        SizedBox(height: MySizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: MyText.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: MySizes.spaceBtwInputFields/2),

        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                children: [
                  TextSpan(text: MyText.iAgreeTo),

                  TextSpan(
                    text: MyText.privacyPolicy,
                    style: Theme.of(context).textTheme.bodySmall!
                        .copyWith(
                      color: MyColors.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),

                  TextSpan(text: MyText.and),

                  TextSpan(
                    text: MyText.termsOfUse,
                    style: Theme.of(context).textTheme.bodySmall!
                        .copyWith(
                      color: MyColors.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: MySizes.spaceBtwItems),
        MyElevatedButton(onPressed: ()=>Get.to(()=>VerifyEmailScreen()), child:Text( MyText.createAccount)),
      ],
    );
  }
}
