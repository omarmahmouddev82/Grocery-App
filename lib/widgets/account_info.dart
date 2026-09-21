import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 64.w,
          height: 64.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27.r),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset("assets/image/profile.png").image,
            ),
          ),
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  "Omar Mahmoud",
                  style: TextStyle(
                    color: const Color(0xff181725),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8.w),
                Icon(
                  Icons.edit_outlined, 
                  color: const Color(0xff53B175), 
                  size: 20.sp,
                ),
              ],
            ),
            Text(
              "omardev@gmail.com",
              style: TextStyle(
                color: const Color(0xff7C7C7C),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}