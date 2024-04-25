import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/common/app_style.dart';
import 'package:newapp/common/background_container.dart';
import 'package:newapp/common/reusable_text.dart';
import 'package:newapp/constants/constants.dart';
import 'package:newapp/constants/uidata.dart';
import 'package:newapp/views/home/widgets/food_tile.dart';

class AllFastestFoodPage extends StatelessWidget {
  const AllFastestFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        title: ReusableText(
          text: 'Fastest Foods',
          style: appStyle(13, kGray, FontWeight.w600),
        ),
      ),
      body: BackgroundContainer(
        color: kLightWhite,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            children: List.generate(foods.length, (i) {
              var food = foods[i];
              return FoodTile(
                food: food,
              );
            }),
          ),
        ),
      ),
    );
  }
}
