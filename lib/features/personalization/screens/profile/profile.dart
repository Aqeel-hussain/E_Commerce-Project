 import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widget/profile_primary_header.dart';
import 'package:e_commerce/features/personalization/screens/profile/widget/setting_profile_tile.dart';
import 'package:e_commerce/features/personalization/screens/profile/widget/user_profile_tile.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyProfilePrimaryHeader(),
        
            //
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  UserProfileTile(),
                  SizedBox(height: MySizes.spaceBtwItems),
        
                  //user profile details
                  MySectionHeading(title:'Account Setting' , showActionButton: false),
        
                  //setting menu
                  SettingMenuTile(title: 'My Addresses', subtitle: 'Set shopping delivery addresses', icon: Iconsax.safe_home),
                  SettingMenuTile(title: 'My Addresses', subtitle: 'Set shopping delivery addresses', icon: Iconsax.safe_home),
                  SettingMenuTile(title: 'My Addresses', subtitle: 'Set shopping delivery addresses', icon: Iconsax.safe_home,),
                  
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: Text('Logout')),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



