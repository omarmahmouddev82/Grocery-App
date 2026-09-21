import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/screens/login_screen.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image/onbording image.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/image/carrot white.png',
                  width: 48.w,
                  height: 56.h,
                ),
                SizedBox(height: 35.h),
                Text(
                  'Welcome\nto our store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Get your groceries as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFFCFCFC),
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 25.h),

                CustomButton(
                  text: 'Get Started',
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 90.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}