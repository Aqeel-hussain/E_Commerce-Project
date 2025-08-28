import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/Appbar/appbar.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/edit_profile/widgets/user_profile_edits.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: MyPadding.screenPadding,
          child: Column(
            children: [
              UserProfileWithEditIcon(),
              SizedBox(height: MySizes.spaceBtwItems),

              Divider(),
              SizedBox(height: MySizes.spaceBtwItems),

              MySectionHeading(title: 'Account Setting',showActionButton: false),
              UserDetailRow(title: 'Name ', value: 'Profile Nme', onTap: () {  },),
              UserDetailRow(title: 'Username ', value: 'your name', onTap: () {  },),

              Divider(),
              SizedBox(height: MySizes.spaceBtwItems),
              MySectionHeading(title:'Profile Setting', showActionButton: false,),
              SizedBox(height: MySizes.spaceBtwItems),

              UserDetailRow(title: 'User ID ', value: 'xxxxx', onTap: () {  },),
              UserDetailRow(title: 'Cell No', value: '03 xxxxxxx', onTap: () {  },),
              UserDetailRow(title: 'Email', value: 'Example@gmail.com', onTap: () {  },),
              UserDetailRow(title: 'Gender', value: 'Male / female', onTap: () {  },),
              SizedBox(height: MySizes.spaceBtwItems),

              Divider(),
              TextButton(onPressed: (){}, child: Text('Close Account',style: TextStyle(color: Colors.red),))




            ],
          ),
        ),
      ),
    );
  }
}

class UserDetailRow extends StatelessWidget {
  const UserDetailRow({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_left_34,
    required this.onTap,
  });

  final String title, value;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: MySizes.spaceBtwItems / 2,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(child: Icon(Iconsax.arrow_right_34, size: MySizes.iconSm)),
          ],
        ),
      ),
    );
  }
}
