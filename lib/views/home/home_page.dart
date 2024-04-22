import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/common/custom_appbar.dart';
import 'package:newapp/common/custom_container.dart';
import 'package:newapp/constants/constants.dart';
import 'package:newapp/views/home/widgets/category_list.dart';

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
              CategoryList(),
            ],
          ),
        ),
      ),
    );
  }
}
