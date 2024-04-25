import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/common/app_style.dart';
import 'package:newapp/common/background_container.dart';
import 'package:newapp/common/reusable_text.dart';
import 'package:newapp/constants/constants.dart';
import 'package:newapp/constants/uidata.dart';
import 'package:newapp/views/home/widgets/restaurant_tile.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        title: ReusableText(
          text: 'Nearby Restaurants',
          style: appStyle(13, kGray, FontWeight.w600),
        ),
      ),
      body: BackgroundContainer(
        color: kLightWhite,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            children: List.generate(restaurants.length, (i) {
              var restaurant = restaurants[i];
              return RestaurantTile(
                restaurant: restaurant,
              );
            }),
          ),
        ),
      ),
    );
  }
}
