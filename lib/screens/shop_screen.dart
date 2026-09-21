import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/widgets/best_selling_section.dart';
import 'package:grocery_app_task10/widgets/exclusive_offers_section.dart';
import 'package:grocery_app_task10/widgets/groceries_section.dart';
import 'package:grocery_app_task10/widgets/home_search_field.dart';
import 'package:grocery_app_task10/widgets/home_slider.dart';

class ProductModel {
  final String title;
  final String subtitle;
  final String price;
  final String imagePath;

  const ProductModel({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
  });
}

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.71.w),
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    Image(
                      image: const AssetImage("assets/image/carrot.png"),
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(height: 7.6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: const Color(0xff4C4F4D),
                          size: 20.sp,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          "Dhaka, Banassre",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff4C4F4D),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    const HomeSearchField(),
                    SizedBox(height: 20.h),
                    const HomeSlider(),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
              const ExclusiveOffersSection(),
              SizedBox(height: 20.h),
              const BestSellingSection(),
              SizedBox(height: 30.h),
              const GroceriesSection(),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}