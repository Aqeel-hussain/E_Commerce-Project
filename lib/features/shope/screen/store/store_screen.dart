import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shope/screen/store/widgets/category_tab.dart';
import 'package:e_commerce/features/shope/screen/store/widgets/store_primary_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/Appbar/tabbar.dart';
import '../../../../common/widgets/brands/brands_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 340,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      MyStorePrimaryHeader(),
                      SizedBox(height: MySizes.spaceBtwItems),
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: MySizes.defaultSpace,
                        ),
                        child: Column(
                          children: [
                            MySectionHeading(title: 'Brand', onPressed: () {}),

                            SizedBox(
                              height: 60.0,
                              child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: MySizes.spaceBtwItems),
                                itemCount: 6,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => SizedBox(
                                  width: MySizes.brandCardWidth,
                                  child: MyBrandCard(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                bottom: MyTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
