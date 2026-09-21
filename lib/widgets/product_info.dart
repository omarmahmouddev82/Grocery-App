import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductInfo extends StatelessWidget {
  final String description;

  const ProductInfo({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        children: [
          const Divider(color: Color(0xFFE2E2E2), height: 1),
          
          // Product Detail
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              title: Text(
                "Product Detail",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF181725),
                ),
              ),
              children: [
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: const Color(0xFF7C7C7C),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
          const Divider(color: Color(0xFFE2E2E2), height: 1),
      
          // Nutritions
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Nutritions",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF181725),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBEBEB),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Text(
                    "100gr",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xFF7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Icon(
                  Icons.arrow_forward_ios, 
                  color: const Color(0xFF181725),
                  size: 16.sp, 
                ),
              ],
            ),
            onTap: () {},
          ),
          const Divider(color: Color(0xFFE2E2E2), height: 1),
      
          // Review
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Review",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF181725),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      Icons.star,
                      color: const Color(0xFFF3603F),
                      size: 18.sp,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Icon(
                  Icons.arrow_forward_ios, 
                  color: const Color(0xFF181725),
                  size: 16.sp, 
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}