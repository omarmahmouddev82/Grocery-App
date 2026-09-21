import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';
import 'package:grocery_app_task10/widgets/product_header.dart';
import 'package:grocery_app_task10/widgets/product_info.dart';

class ProductModel {
  final String title;
  final String subtitle;
  final String price;
  final String imagePath;
  final String description;

  const ProductModel({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
    this.description = 
    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
  });
}

class ProductDetailScreen extends StatelessWidget {
  final dynamic product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2F3F2),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new, 
            color: Colors.black, 
            size: 20.sp
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.share_outlined, 
              color: Colors.black, 
              size: 24.sp
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ProductHeader(
                      title: product.title,
                      subtitle: product.subtitle,
                      price: product.price,
                      imagePath: product.imagePath,
                    ),
                    SizedBox(height: 20.h),
                    ProductInfo(description: product.description),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25.0.r),
              child: CustomButton(
                text: "Add To Basket",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}