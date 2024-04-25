import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:newapp/common/custom_appbar.dart';
import 'package:newapp/common/custom_container.dart';
import 'package:newapp/common/heading.dart';
import 'package:newapp/constants/constants.dart';
import 'package:newapp/views/home/all_fastest_foods.dart';
import 'package:newapp/views/home/all_nearby_restaurants.dart';
import 'package:newapp/views/home/recommendations_page.dart';
import 'package:newapp/views/home/widgets/category_list.dart';
import 'package:newapp/views/home/widgets/food_list.dart';
import 'package:newapp/views/home/widgets/nearby_restaurants_list.dart';

class HomepPage extends StatelessWidget {
  const HomepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: const CustomAppBar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: 'Nearby Restaurants',
                onTap: () {
                  Get.to(
                    () => const AllNearbyRestaurants(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900),
                  );
                },
              ),
              const NearbyRestaurants(),
              Heading(
                text: 'Try Something New',
                onTap: () {
                  Get.to(
                    () => const RecommendationsPage(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900),
                  );
                },
              ),
              const FoodList(),
              Heading(
                text: 'Food Closer to you',
                onTap: () {
                  Get.to(
                    () => const AllFastestFoodPage(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900),
                  );
                },
              ),
              const FoodList(),
            ],
          ),
        ),
      ),
    );
  }
}
