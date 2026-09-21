import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndPrivacyWidget extends StatelessWidget {
  const TermsAndPrivacyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        RichText(
          text: TextSpan(
            text: "By continuing you agree to our ",
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xff7C7C7C),
              fontWeight: FontWeight.w500,
            ),
            children: [
              TextSpan(
                text: "Terms of Service ",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff53B175),
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: "and ",
                style: TextStyle(fontSize: 14.sp),
              ),
              TextSpan(
                text: "Privacy Policy.",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff53B175),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}