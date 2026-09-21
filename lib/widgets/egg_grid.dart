import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EggGrid extends StatelessWidget {
  const EggGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 15.w,
      mainAxisSpacing: 15.h,
      childAspectRatio: 0.65,
      physics: const BouncingScrollPhysics(),
      children: [
        _buildProductCard('assets/image/egg chicken red.png', 'Egg Chicken Red', '4pcs, Price', '\$1.99', imageHeight: 90.h, imageWidth: 90.w),
        _buildProductCard('assets/image/egg chicken white.png', 'Egg Chicken White', '180g, Price', '\$1.50', imageHeight: 90.h, imageWidth: 90.w),
        _buildProductCard('assets/image/egg pasta.png', 'Egg Pasta', '30gm, Price', '\$15.99', imageHeight: 90.h, imageWidth: 90.w),
        _buildProductCard('assets/image/egg noodles.png', 'Egg Noodles', '2L, Price', '\$15.99', imageHeight: 90.h, imageWidth: 90.w),
        _buildProductCard('assets/image/mayonnais eggless.png', 'Mayonnais Eggless', '325ml, Price', '\$4.99', imageHeight: 90.h, imageWidth: 90.w),
        _buildProductCard('assets/image/egg noodles2.png', 'Egg Noodles', '330ml, Price', '\$4.99', imageHeight: 90.h, imageWidth: 90.w),
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
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: const Color(0xFFE2E2E2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: imageHeight ?? 90.h,
                width: imageWidth ?? 90.w,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  cacheWidth: 300,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.fastfood, size: 40.sp, color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
          ),
          Text(
            unit,
            style: TextStyle(color: Colors.grey, fontSize: 13.sp),
          ),
          SizedBox(height: 6.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
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