import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final VoidCallback? onDelete;

  const CartItem({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 65.w,
          height: 65.h,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) =>
              Icon(Icons.fastfood, size: 50.sp, color: Colors.grey),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff181725),
                    ),
                  ),
                  GestureDetector(
                    onTap: onDelete,
                    child: Icon(Icons.close, color: const Color(0xff7C7C7C), size: 20.sp),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                quantity,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff7C7C7C),
                ),
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      _buildCounterBtn(Icons.remove),
                      SizedBox(width: 12.w),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 12.w),
                      _buildCounterBtn(Icons.add, isAdd: true),
                    ],
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff181725),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCounterBtn(IconData icon, {bool isAdd = false}) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: const Color(0xffE2E2E2)),
      ),
      child: Icon(
        icon,
        size: 18.sp,
        color: isAdd ? const Color(0xff53B175) : const Color(0xffB3B3B3),
      ),
    );
  }
}