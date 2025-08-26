import 'package:e_commerce/common/style/padding.dart';
 import 'package:e_commerce/common/widgets/buttons/socialmedia_button.dart';
import 'package:e_commerce/common/widgets/login_signup/divider_form.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
 import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text.dart';
import 'package:flutter/material.dart';

class MySignUpScreen extends StatelessWidget {
  const MySignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: MyPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MyText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: MySizes.spaceBetweenSections),

              //form
              MySignUpForm(),
              SizedBox(height: MySizes.spaceBetweenSections),

              //divider
              MyFormDivider(title: MyText.orSignupWith),
              SizedBox(height: MySizes.spaceBetweenSections),

              // footer
              MySocialButton()
            ],
          ),
        ),
      ),
    );
  }
}

