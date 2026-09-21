import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const LoginHeader({
    super.key,
    this.title = "Login",
    this.subtitle = "Enter your emails and password",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 28.42.h),
        Center(
          child: Image.asset(
            "assets/image/carrot.png",
            width: 47.84.w,
            height: 56.36.h,
          ),
        ),
        SizedBox(height: 100.2.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 26.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff181725),
          ),
        ),
        SizedBox(height: 15.h),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff7C7C7C),
          ),
        ),
      ],
    );
  }
}