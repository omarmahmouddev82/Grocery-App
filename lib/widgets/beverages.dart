import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 20.w,
      mainAxisSpacing: 20.h,
      childAspectRatio: 0.65,
      children: [
        _buildProductCard('assets/image/diet coke.png', 'Diet Coke', '355ml', '\$1.99', imageHeight: 100.h, imageWidth: 100.w),
        _buildProductCard('assets/image/sprite can.png', 'Sprite Can', '325ml', '\$1.50', imageHeight: 100.h, imageWidth: 100.w),
        _buildProductCard('assets/image/apple and grape juice.png', 'Apple & Grape Juice', '325ml', '\$1.50', imageHeight: 95.h, imageWidth: 95.w),
        _buildProductCard('assets/image/orenge juice.png', 'Orenge Juice', '2L', '\$15.99', imageHeight: 95.h, imageWidth: 95.w),
        _buildProductCard('assets/image/coca cola can.png', 'Coca Cola Can', '325ml', '\$4.99', imageHeight: 100.h, imageWidth: 100.w),
        _buildProductCard('assets/image/pepsi can.png', 'Pepsi Can', '330ml', '\$4.99', imageHeight: 100.h, imageWidth: 100.w),
      ],
    );
  }

  Widget _buildProductCard(
    String image,
    String name,
    String unit,
    String price, {
    double? imageHeight,
    double? imageWidth,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: const Color(0xFFE2E2E2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image item
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: imageHeight ?? 90.h,
                width: imageWidth ?? 90.w,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),

          // name product
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
          ),

          Text(
            unit,
            style: TextStyle(color: Colors.grey, fontSize: 14.sp),
          ),
          SizedBox(height: 6.h),

          // price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
              // button plus
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  color: const Color(0xFF53B175),
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Icon(Icons.add, color: Colors.white, size: 22.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}