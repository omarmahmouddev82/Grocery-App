import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';

class OrderFailedDialog extends StatelessWidget {
  const OrderFailedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
      ),
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Close Button
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.close_rounded,
                  color: const Color(0xFF181725),
                  size: 24.sp,
                ),
              ),
            ),

            SizedBox(height: 10.h),

            // Image Illustration
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Image.asset(
                'assets/image/oops! order failed.png',
                height: 180.h,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 25.h),

            // Title
            Text(
              'Oops! Order Failed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF181725),
              ),
            ),

            SizedBox(height: 12.h),

            // Subtitle
            Text(
              'Something went terribly wrong.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.sp,
                color: const Color(0xFF7C7C7C),
              ),
            ),

            SizedBox(height: 30.h),

            // Please Try Again Button
            CustomButton(
              text: 'Please Try Again',
              onTap: () {
                Navigator.pop(context);
              },
            ),

            SizedBox(height: 8.h),

            // Back to home Button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back to home',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF181725),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}