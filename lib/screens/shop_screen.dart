import 'package:flutter/material.dart';
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
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.71),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Image(
                      image: AssetImage("assets/image/carrot.png"),
                      width: 30,
                    ),
                    SizedBox(height: 7.6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff4C4F4D),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Dhaka, Banassre",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4C4F4D),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    HomeSearchField(),
                    SizedBox(height: 20),
                    HomeSlider(),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              ExclusiveOffersSection(),
              SizedBox(height: 20),
              BestSellingSection(),
              SizedBox(height: 30),
              GroceriesSection(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}