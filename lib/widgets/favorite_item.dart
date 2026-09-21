import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteItem extends StatelessWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final VoidCallback? onTap;

  const FavoriteItem({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(
            image,
            width: 50.w,
            height: 50.h,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) =>
                Icon(Icons.fastfood, size: 40.sp, color: Colors.grey),
          ),
          SizedBox(width: 20.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff181725),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  quantity,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff7C7C7C),
                  ),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xff181725),
            ),
          ),
          SizedBox(width: 10.w),
          Icon(
            Icons.chevron_right,
            color: const Color(0xff181725),
            size: 24.sp,
          ),
        ],
      ),
    );
  }
}