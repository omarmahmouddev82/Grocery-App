import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color textColor;
  final Widget? prefixWidget;

  const CustomButton({
    super.key,
    this.text = "Login",
    this.onTap,
    this.backgroundColor = const Color(0xff53B175),
    this.textColor = const Color(0xffFFF9FF),
    this.prefixWidget,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(19.r),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.r),
          color: backgroundColor,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            if (prefixWidget != null)
              Positioned(
                left: 24.w,
                child: prefixWidget!,
              ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}