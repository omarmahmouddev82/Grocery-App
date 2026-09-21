import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductHeader extends StatefulWidget {
  final String title;
  final String subtitle;
  final String price;
  final String imagePath;

  const ProductHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
  });

  @override
  State<ProductHeader> createState() => _ProductHeaderState();
}

class _ProductHeaderState extends State<ProductHeader> {
  int quantity = 1;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // regtangle
        Container(
          height: 300.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F3F2),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25.r)),
          ),
          // image
          child: Center(
            child: Image.asset(
              widget.imagePath,
              width: 330.w,
              height: 200.h,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        SizedBox(height: 24.h),

        // product name + subtitle + favorite
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF181725),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    widget.subtitle,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xFF7C7C7C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              // favorite
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : const Color(0xFF7C7C7C),
                  size: 28.sp,
                ),
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 25.h),

        // counter + price
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (quantity > 1) setState(() => quantity--);
                    },
                    icon: Icon(Icons.remove, color: const Color(0xFFB3B3B3), size: 24.sp),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFE2E2E2)),
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Text(
                      '$quantity',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() => quantity++
                      );
                    },
                    icon: Icon(
                      Icons.add, 
                      color: const Color(0xFF53B175), 
                      size: 24.sp
                    ),
                  ),
                ],
              ),
              Text(
                '\$${widget.price}',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF181725),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}