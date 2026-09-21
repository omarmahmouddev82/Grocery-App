import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),

                Padding(
                  padding: EdgeInsets.only(
                    right: 24.w,
                  ),
                  child: Image.asset(
                    'assets/image/order accept.png',
                    height: 220.h,
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(height: 40.h),

                // Title Text
                Text(
                  'Your Order has been\naccepted',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF181725),
                    height: 1.2,
                  ),
                ),

                SizedBox(height: 16.h),

                // Subtitle Text
                Text(
                  'Your items has been placed and is on\nit\'s way to being processed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: const Color(0xFF7C7C7C),
                    height: 1.3,
                  ),
                ),

                const Spacer(),

                // Track Order Button
                CustomButton(
                  text: 'Track Order',
                  onTap: () {},
                ),

                SizedBox(height: 12.h),

                // Back to home Text Button
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Back to home',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF181725),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}