 import 'package:e_commerce/common/widgets/login_signup/divider_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/common/widgets/buttons/socialmedia_button.dart';
  import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
  import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //Title & subtitle
              MyLoginHeader(),
              SizedBox( height: MySizes.spaceBetweenSections),
              //Text Form
              MyLoginForm(),
              SizedBox( height: MySizes.spaceBetweenSections),

              MyFormDivider(title: MyText.orSignupWith),
              SizedBox( height: MySizes.spaceBetweenSections),
              //social media icons
              MySocialButton()
            ]
          ),
        ),
      ),
    );
  }
}




