import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'terms_and_privacy_widget.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        // Username
        TextFormField(
          style: TextStyle(fontSize: 18.sp),
          onTapOutside: (value) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            labelText: "Username",
            labelStyle: TextStyle(
              color: const Color(0xFF7C7C7C),
              fontSize: 16.sp,
            ),
            floatingLabelStyle: TextStyle(
              color: const Color(0xFF53B175),
              fontSize: 16.sp,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffE2E2E2),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF53B175),
              ),
            ),
          ),
        ),
        SizedBox(height: 30.h),

        // Email
        TextFormField(
          style: TextStyle(fontSize: 18.sp),
          onTapOutside: (value) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            labelText: "Email",
            labelStyle: TextStyle(
              color: const Color(0xFF7C7C7C),
              fontSize: 16.sp,
            ),
            floatingLabelStyle: TextStyle(
              color: const Color(0xFF53B175),
              fontSize: 16.sp,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF53B175)),
            ),
          ),
        ),
        SizedBox(height: 30.h),
        
        // Password
        TextFormField(
          obscureText: true,
          style: TextStyle(fontSize: 18.sp),
          onTapOutside: (value) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            labelText: "Password",
            labelStyle: TextStyle(
              color: const Color(0xFF7C7C7C),
              fontSize: 16.sp,
            ),
            floatingLabelStyle: TextStyle(
              color: const Color(0xFF53B175),
              fontSize: 16.sp,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF53B175)),
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.visibility_off, size: 22.sp),
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(height: 20.h),
        const TermsAndPrivacyWidget(),
        SizedBox(height: 30.h),
      ],
    );
  }
}